.class public Lcom/biquge/ebook/app/widget/ToggleEditTextView;
.super Landroid/widget/FrameLayout;
.source "ToggleEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;
    }
.end annotation


# instance fields
.field public case:Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;

.field public do:Landroid/widget/TextView;

.field public for:Ljava/lang/String;

.field public if:Lcom/biquge/ebook/app/widget/ClearEditText;

.field public new:Ljava/lang/String;

.field public try:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/ToggleEditTextView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView$do;-><init>(Lcom/biquge/ebook/app/widget/ToggleEditTextView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->try:Lcom/apk/bg;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01ca

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090551

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    const p1, 0x7f0901ee

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/ClearEditText;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->try:Lcom/apk/bg;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->for:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->setText(Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->case:Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;->do(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-static {p1}, Lcom/apk/goto;->transient(Lcom/biquge/ebook/app/widget/ClearEditText;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->for:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setOnEditFinishListener(Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->case:Lcom/biquge/ebook/app/widget/ToggleEditTextView$if;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->do:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->if:Lcom/biquge/ebook/app/widget/ClearEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->new:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ToggleEditTextView;->for:Ljava/lang/String;

    return-void
.end method
