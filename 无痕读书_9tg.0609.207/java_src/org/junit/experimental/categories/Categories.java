package org.junit.experimental.categories;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runner.manipulation.Filter;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runners.Suite;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;
/* loaded from: classes6.dex */
public class Categories extends Suite {

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface ExcludeCategory {
        Class<?> value();
    }

    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface IncludeCategory {
        Class<?> value();
    }

    /* loaded from: classes6.dex */
    public static class CategoryFilter extends Filter {
        private final Class<?> fExcluded;
        private final Class<?> fIncluded;

        public static CategoryFilter include(Class<?> categoryType) {
            return new CategoryFilter(categoryType, null);
        }

        public CategoryFilter(Class<?> includedCategory, Class<?> excludedCategory) {
            this.fIncluded = includedCategory;
            this.fExcluded = excludedCategory;
        }

        @Override // org.junit.runner.manipulation.Filter
        public String describe() {
            return "category " + this.fIncluded;
        }

        @Override // org.junit.runner.manipulation.Filter
        public boolean shouldRun(Description description) {
            if (hasCorrectCategoryAnnotation(description)) {
                return true;
            }
            Iterator i$ = description.getChildren().iterator();
            while (i$.hasNext()) {
                Description each = i$.next();
                if (shouldRun(each)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean hasCorrectCategoryAnnotation(org.junit.runner.Description r7) {
            /*
                r6 = this;
                r3 = 1
                r4 = 0
                java.util.List r0 = r6.categories(r7)
                boolean r5 = r0.isEmpty()
                if (r5 == 0) goto L13
                java.lang.Class<?> r5 = r6.fIncluded
                if (r5 != 0) goto L11
            L10:
                return r3
            L11:
                r3 = r4
                goto L10
            L13:
                java.util.Iterator r2 = r0.iterator()
            L17:
                boolean r5 = r2.hasNext()
                if (r5 == 0) goto L31
                java.lang.Object r1 = r2.next()
                java.lang.Class r1 = (java.lang.Class) r1
                java.lang.Class<?> r5 = r6.fExcluded
                if (r5 == 0) goto L17
                java.lang.Class<?> r5 = r6.fExcluded
                boolean r5 = r5.isAssignableFrom(r1)
                if (r5 == 0) goto L17
                r3 = r4
                goto L10
            L31:
                java.util.Iterator r2 = r0.iterator()
            L35:
                boolean r5 = r2.hasNext()
                if (r5 == 0) goto L4e
                java.lang.Object r1 = r2.next()
                java.lang.Class r1 = (java.lang.Class) r1
                java.lang.Class<?> r5 = r6.fIncluded
                if (r5 == 0) goto L10
                java.lang.Class<?> r5 = r6.fIncluded
                boolean r5 = r5.isAssignableFrom(r1)
                if (r5 == 0) goto L35
                goto L10
            L4e:
                r3 = r4
                goto L10
            */
            throw new UnsupportedOperationException("Method not decompiled: org.junit.experimental.categories.Categories.CategoryFilter.hasCorrectCategoryAnnotation(org.junit.runner.Description):boolean");
        }

        private List<Class<?>> categories(Description description) {
            ArrayList<Class<?>> categories = new ArrayList<>();
            categories.addAll(Arrays.asList(directCategories(description)));
            categories.addAll(Arrays.asList(directCategories(parentDescription(description))));
            return categories;
        }

        private Description parentDescription(Description description) {
            Class<?> testClass = description.getTestClass();
            if (testClass == null) {
                return null;
            }
            return Description.createSuiteDescription(testClass);
        }

        private Class<?>[] directCategories(Description description) {
            if (description == null) {
                return new Class[0];
            }
            Category annotation = (Category) description.getAnnotation(Category.class);
            if (annotation == null) {
                return new Class[0];
            }
            return annotation.value();
        }
    }

    public Categories(Class<?> klass, RunnerBuilder builder) throws InitializationError {
        super(klass, builder);
        try {
            filter(new CategoryFilter(getIncludedCategory(klass), getExcludedCategory(klass)));
            assertNoCategorizedDescendentsOfUncategorizeableParents(getDescription());
        } catch (NoTestsRemainException e) {
            throw new InitializationError(e);
        }
    }

    private Class<?> getIncludedCategory(Class<?> klass) {
        IncludeCategory annotation = (IncludeCategory) klass.getAnnotation(IncludeCategory.class);
        if (annotation == null) {
            return null;
        }
        return annotation.value();
    }

    private Class<?> getExcludedCategory(Class<?> klass) {
        ExcludeCategory annotation = (ExcludeCategory) klass.getAnnotation(ExcludeCategory.class);
        if (annotation == null) {
            return null;
        }
        return annotation.value();
    }

    private void assertNoCategorizedDescendentsOfUncategorizeableParents(Description description) throws InitializationError {
        if (!canHaveCategorizedChildren(description)) {
            assertNoDescendantsHaveCategoryAnnotations(description);
        }
        Iterator i$ = description.getChildren().iterator();
        while (i$.hasNext()) {
            Description each = i$.next();
            assertNoCategorizedDescendentsOfUncategorizeableParents(each);
        }
    }

    private void assertNoDescendantsHaveCategoryAnnotations(Description description) throws InitializationError {
        Iterator i$ = description.getChildren().iterator();
        while (i$.hasNext()) {
            Description each = i$.next();
            if (each.getAnnotation(Category.class) != null) {
                throw new InitializationError("Category annotations on Parameterized classes are not supported on individual methods.");
            }
            assertNoDescendantsHaveCategoryAnnotations(each);
        }
    }

    private static boolean canHaveCategorizedChildren(Description description) {
        Iterator i$ = description.getChildren().iterator();
        while (i$.hasNext()) {
            Description each = i$.next();
            if (each.getTestClass() == null) {
                return false;
            }
        }
        return true;
    }
}
