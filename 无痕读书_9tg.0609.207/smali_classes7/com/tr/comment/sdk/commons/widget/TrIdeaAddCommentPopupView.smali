.class public Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "TrIdeaAddCommentPopupView.java"

# interfaces
.implements Lcom/apk/lb0;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final break:Ljava/lang/String;

.field public final case:Ljava/lang/String;

.field public final catch:Lcom/apk/g80;

.field public class:Lcom/apk/kb0;

.field public do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

.field public final else:Lcom/tr/comment/sdk/bean/TrCommentBean;

.field public for:Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

.field public final goto:Ljava/lang/String;

.field public if:Landroid/widget/TextView;

.field public new:Landroid/widget/ImageView;

.field public final this:Ljava/lang/String;

.field public final try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/g80;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->try:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->case:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->else:Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 5
    iput-object p5, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->goto:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->this:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->break:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->catch:Lcom/apk/g80;

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

.method public case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 0

    return-void
.end method

.method public else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->catch:Lcom/apk/g80;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/apk/g80;->do(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_0
    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/tr/comment/sdk/R$layout;->tr_sdk_idea_popup_sen_comment_layout:I

    return v0
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->new()V

    :cond_0
    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/apk/tb0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_send_msg_btn:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->for:Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->class:Lcom/apk/kb0;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->try:Ljava/lang/String;

    iget-object v3, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->goto:Ljava/lang/String;

    iget-object v4, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->this:Ljava/lang/String;

    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->else:Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 7
    invoke-static {p1, v0}, Lcom/apk/la0;->for(Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->break:Ljava/lang/String;

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/apk/kb0;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_comment_loading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/commons/widget/TrStateView;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    .line 3
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_idea_title_tv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->if:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_send_msg_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->new:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_face_text_et:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->for:Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->new:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/apk/kb0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/apk/kb0;-><init>(Landroid/content/Context;Lcom/apk/lb0;)V

    iput-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->class:Lcom/apk/kb0;

    .line 9
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->if:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->case:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/apk/la0;->if(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->for:Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->new:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/tr/comment/sdk/commons/widget/TrIdeaAddCommentPopupView;->for:Lcom/tr/comment/sdk/commons/widget/view/TrDayNightEditText;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public try(Ljava/util/List;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrCommentBean;",
            ">;IZZ)V"
        }
    .end annotation

    return-void
.end method
