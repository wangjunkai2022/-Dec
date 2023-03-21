.class public Lcom/biquge/ebook/app/widget/AppRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "AppRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06003c

    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    const/4 p2, 0x6

    new-array v0, p2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v3, 0x2

    aput p1, v0, v3

    const/4 v4, 0x3

    aput p1, v0, v4

    const/4 v5, 0x4

    aput p1, v0, v5

    const/4 v6, 0x5

    aput p1, v0, v6

    new-array p1, p2, [[I

    new-array p2, v3, [I

    .line 3
    fill-array-data p2, :array_0

    aput-object p2, p1, v1

    new-array p2, v3, [I

    .line 4
    fill-array-data p2, :array_1

    aput-object p2, p1, v2

    new-array p2, v2, [I

    const v7, 0x101009e

    aput v7, p2, v1

    aput-object p2, p1, v3

    new-array p2, v2, [I

    const v3, 0x101009c

    aput v3, p2, v1

    aput-object p2, p1, v4

    new-array p2, v2, [I

    const v2, 0x101009d

    aput v2, p2, v1

    aput-object p2, p1, v5

    new-array p2, v1, [I

    aput-object p2, p1, v6

    .line 5
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void

    nop

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
