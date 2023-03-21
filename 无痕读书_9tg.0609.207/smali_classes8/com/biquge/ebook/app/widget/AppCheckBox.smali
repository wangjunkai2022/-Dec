.class public Lcom/biquge/ebook/app/widget/AppCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "AppCheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060141

    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 4
    invoke-static {p1, p1, p1, p1}, Lcom/biquge/ebook/app/widget/AppCheckBox;->if(IIII)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06003c

    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 6
    invoke-static {p1, p1, p1, p1}, Lcom/biquge/ebook/app/widget/AppCheckBox;->if(IIII)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public static if(IIII)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 v3, 0x2

    aput p0, v1, v3

    const/4 v4, 0x3

    aput p2, v1, v4

    const/4 p2, 0x4

    aput p3, v1, p2

    const/4 p3, 0x5

    aput p0, v1, p3

    new-array p0, v0, [[I

    new-array v0, v3, [I

    .line 1
    fill-array-data v0, :array_0

    aput-object v0, p0, v2

    new-array v0, v3, [I

    .line 2
    fill-array-data v0, :array_1

    aput-object v0, p0, p1

    new-array v0, p1, [I

    const v5, 0x101009e

    aput v5, v0, v2

    aput-object v0, p0, v3

    new-array v0, p1, [I

    const v3, 0x101009c

    aput v3, v0, v2

    aput-object v0, p0, v4

    new-array p1, p1, [I

    const v0, 0x101009d

    aput v0, p1, v2

    aput-object p1, p0, p2

    new-array p1, v2, [I

    aput-object p1, p0, p3

    .line 3
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method
