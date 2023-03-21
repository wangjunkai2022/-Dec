.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;
.super Lcom/apk/md;
.source "WebBookDirLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-direct {p0}, Lcom/apk/md;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ILcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "\u6b63\u6587"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->if()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 3
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    .line 4
    invoke-virtual {v2, p3}, Lcom/apk/k;->for(Ljava/util/List;)V

    .line 5
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 6
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->try:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 9
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 10
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->try:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 17
    :cond_1
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 18
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 19
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 20
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 21
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 22
    invoke-virtual {p3, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_7

    .line 23
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 24
    iput-object p2, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 25
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 26
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 27
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->getPreUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 29
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    .line 30
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->getNextUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, p3

    .line 31
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterPreBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 32
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterNextBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez p2, :cond_4

    if-eqz v0, :cond_5

    .line 33
    :cond_4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-static {p2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    :cond_5
    if-ne p1, p3, :cond_6

    .line 34
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 35
    iget p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    if-ltz p1, :cond_7

    .line 36
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 37
    iget p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    .line 38
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterListBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 39
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    .line 40
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 41
    iget p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    .line 42
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    .line 43
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 44
    iget p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    .line 45
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 46
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    if-ge p1, p2, :cond_7

    .line 48
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 49
    iget p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    .line 50
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterListBtn:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 51
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    .line 52
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 53
    iget p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    .line 54
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 57
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->this:Lcom/apk/h1;

    if-eqz p1, :cond_8

    .line 58
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 59
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->this:Lcom/apk/h1;

    .line 60
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 61
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    .line 62
    iget-object p2, p2, Lcom/apk/k;->do:Ljava/util/List;

    .line 63
    iget-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 64
    iget-object p3, p3, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 65
    invoke-interface {p1, p2, p3}, Lcom/apk/h1;->new(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method
