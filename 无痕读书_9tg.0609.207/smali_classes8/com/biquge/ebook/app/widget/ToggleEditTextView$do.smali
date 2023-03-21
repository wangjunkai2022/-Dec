.class public Lcom/biquge/ebook/app/widget/ToggleEditTextView$do;
.super Lcom/apk/bg;
.source "ToggleEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ToggleEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ToggleEditTextView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ToggleEditTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView$do;->do:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView$do;->do:Lcom/biquge/ebook/app/widget/ToggleEditTextView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object v1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 9
    invoke-static {v0}, Lcom/apk/ze;->L(Landroid/app/Activity;)V

    .line 10
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
