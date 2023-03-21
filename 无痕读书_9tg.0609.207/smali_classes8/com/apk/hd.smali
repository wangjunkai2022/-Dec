.class public Lcom/apk/hd;
.super Lcom/apk/bg;
.source "TopCommentLayout.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/TopCommentLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->new:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->new:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->try:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 9
    iget-boolean v2, v2, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->if:Z

    .line 10
    iget-object v3, p0, Lcom/apk/hd;->do:Lcom/biquge/ebook/app/ui/view/TopCommentLayout;

    .line 11
    iget-boolean v3, v3, Lcom/biquge/ebook/app/ui/view/TopCommentLayout;->for:Z

    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Lcom/apk/ze;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
