.class public Lcom/tr/comment/sdk/view/TrTopCommentView;
.super Lcom/apk/c90;
.source "TrTopCommentView.java"

# interfaces
.implements Lcom/apk/lb0;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/apk/o80;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tr/comment/sdk/view/TrTopCommentView$if;
    }
.end annotation


# instance fields
.field public break:Landroid/view/View;

.field public case:Ljava/lang/String;

.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public else:Ljava/lang/String;

.field public for:Landroidx/fragment/app/FragmentActivity;

.field public goto:Lcom/apk/j80;

.field public if:Landroid/widget/TextView;

.field public new:Lcom/tr/comment/sdk/bean/TrSourceType;

.field public this:Lcom/apk/kb0;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/c90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->for:Landroidx/fragment/app/FragmentActivity;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/tr/comment/sdk/R$layout;->tr_sdk_top_comment_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_top_comment_rv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    sget p1, Lcom/tr/comment/sdk/R$id;->tr_sdk_top_comment_more:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->if:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 8
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/tr/comment/sdk/commons/widget/view/TrFullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Lcom/apk/k40;->for(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 11
    new-instance p1, Lcom/apk/j80;

    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->for:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/apk/j80;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    .line 12
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance p1, Lcom/apk/kb0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/apk/kb0;-><init>(Landroid/content/Context;Lcom/apk/lb0;)V

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->this:Lcom/apk/kb0;

    .line 14
    new-instance p1, Lcom/tr/comment/sdk/view/TrTopCommentView$if;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/tr/comment/sdk/view/TrTopCommentView$if;-><init>(Lcom/tr/comment/sdk/view/TrTopCommentView;Lcom/tr/comment/sdk/view/TrTopCommentView$do;)V

    .line 15
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_like_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 16
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_reply_layout:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    .line 17
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_jubao_btn:I

    invoke-virtual {p2, v0, p1}, Lcom/apk/b90;->native(ILcom/apk/r90;)V

    return-void
.end method


# virtual methods
.method public case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->for:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/tr/comment/sdk/R$layout;->tr_sdk_official_top_msg_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    invoke-virtual {v1, v0}, Lcom/apk/s80;->this(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    sget v1, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_avatar_iv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    sget v2, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_author_tv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    sget v3, Lcom/tr/comment/sdk/R$id;->tr_sdk_item_content_tv:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tr/comment/sdk/commons/widget/view/TrDayNightTextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    .line 7
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 8
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    sget v3, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_face_official:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/apk/fa0;->do:Lcom/apk/m80;

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v3, v0}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    new-instance v0, Lcom/tr/comment/sdk/view/TrTopCommentView$do;

    invoke-direct {v0, p0, p1}, Lcom/tr/comment/sdk/view/TrTopCommentView$do;-><init>(Lcom/tr/comment/sdk/view/TrTopCommentView;Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public else(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public goto()V
    .locals 0

    return-void
.end method

.method public if(Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->this:Lcom/apk/kb0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->case:Ljava/lang/String;

    const-string v3, "0"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/apk/kb0;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/tr/comment/sdk/R$id;->tr_sdk_top_comment_more:I

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->new:Lcom/tr/comment/sdk/bean/TrSourceType;

    iget-object v1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->case:Ljava/lang/String;

    iget-object v2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->else:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/tr/comment/sdk/TrCommentSdk;->openCommentActivity(Landroid/content/Context;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public this(Landroidx/fragment/app/FragmentActivity;Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->for:Landroidx/fragment/app/FragmentActivity;

    .line 2
    iput-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->new:Lcom/tr/comment/sdk/bean/TrSourceType;

    .line 3
    invoke-static {p2}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->try:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->case:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->else:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->this:Lcom/apk/kb0;

    if-eqz p2, :cond_0

    .line 7
    sget-object p4, Lcom/tr/comment/sdk/bean/TrSortType;->HOT:Lcom/tr/comment/sdk/bean/TrSortType;

    invoke-virtual {p4}, Lcom/tr/comment/sdk/bean/TrSortType;->getName()Ljava/lang/String;

    move-result-object p4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/fa0;->while()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/commentservice/comment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "0"

    invoke-static {v0, p1, p3, p1, p4}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/index.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 9
    invoke-virtual {p2, p1, p3, p4}, Lcom/apk/kb0;->case(Ljava/lang/String;IZ)V

    :cond_0
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

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->if:Landroid/widget/TextView;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->break:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, p3, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tr/comment/sdk/view/TrTopCommentView;->goto:Lcom/apk/j80;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2, p1}, Lcom/apk/s80;->break(Ljava/util/List;)V

    :cond_2
    return-void
.end method
