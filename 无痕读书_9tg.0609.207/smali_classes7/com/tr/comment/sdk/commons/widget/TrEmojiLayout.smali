.class public Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;
.super Landroid/widget/FrameLayout;
.source "TrEmojiLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;
    }
.end annotation


# instance fields
.field public do:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_emoji_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_emoji_layout_rv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 6
    new-instance p2, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7
    sget-object v2, Lcom/apk/ha0;->if:Ljava/util/List;

    .line 8
    invoke-direct {p2, v1, v2, v0}, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 9
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    new-instance p1, Lcom/apk/d90;

    invoke-direct {p1, p0, p2}, Lcom/apk/d90;-><init>(Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout$do;)V

    .line 11
    iput-object p1, p2, Lcom/apk/y80;->throw:Lcom/apk/s90;

    return-void
.end method

.method public static do(Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "/DEL"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    new-instance p1, Landroid/view/KeyEvent;

    const/16 v0, 0x43

    invoke-direct {p1, v2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 6
    iget-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-gez v1, :cond_3

    const/4 v3, 0x0

    .line 7
    :cond_3
    invoke-interface {v0, v1, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p1

    .line 9
    invoke-static {}, Lcom/tr/comment/sdk/TrCommentSdk;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/apk/la0;->try(Landroid/content/Context;Landroid/text/Editable;II)V

    .line 10
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p0, p0, Lcom/tr/comment/sdk/commons/widget/TrEmojiLayout;->do:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method
