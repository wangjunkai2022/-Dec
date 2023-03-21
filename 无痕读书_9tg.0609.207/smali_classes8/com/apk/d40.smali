.class public Lcom/apk/d40;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic do:Lcom/apk/e40;


# direct methods
.method public constructor <init>(Lcom/apk/e40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d40;->do:Lcom/apk/e40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/d40;->do:Lcom/apk/e40;

    iget-object v0, v0, Lcom/apk/e40;->do:Lcom/apk/b40;

    invoke-interface {v0, p1}, Lcom/apk/b40;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/d40;->do:Lcom/apk/e40;

    iget-object v0, v0, Lcom/apk/e40;->do:Lcom/apk/b40;

    invoke-interface {v0, p1, p2, p3}, Lcom/apk/b40;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/d40;->do:Lcom/apk/e40;

    iget-object v0, v0, Lcom/apk/e40;->do:Lcom/apk/b40;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/apk/b40;->if(IZ)V

    .line 2
    iget-object v0, p0, Lcom/apk/d40;->do:Lcom/apk/e40;

    iget-object v2, v0, Lcom/apk/e40;->for:Lcom/apk/e40$new;

    if-eqz v2, :cond_2

    .line 3
    iget-object v0, v0, Lcom/apk/e40;->do:Lcom/apk/b40;

    invoke-interface {v0}, Lcom/apk/b40;->getPreSelectItem()I

    check-cast v2, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity$do;

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_2

    .line 4
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->l(Z)V

    .line 5
    iget-object p1, v2, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;

    .line 6
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->for:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->if:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->mSearchEdit:Lcom/biquge/ebook/app/widget/ClearEditText;

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, v1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, v1, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->mSearchET:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 13
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;->h()V

    goto :goto_0

    .line 14
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method
