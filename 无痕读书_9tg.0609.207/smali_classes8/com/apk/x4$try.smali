.class public Lcom/apk/x4$try;
.super Ljava/lang/Object;
.source "PublicPresenter.java"

# interfaces
.implements Lcom/apk/uv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x4;->private(Lcom/manhua/data/bean/ComicBean;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/manhua/data/bean/ComicBean;

.field public final synthetic new:Lcom/apk/x4;


# direct methods
.method public constructor <init>(Lcom/apk/x4;Ljava/lang/String;Lcom/manhua/data/bean/ComicBean;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    iput-boolean p4, p0, Lcom/apk/x4$try;->for:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, ""

    .line 2
    iget-object v1, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "to_detail"

    iget-object v1, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "to_chapterlist"

    .line 3
    iget-object v1, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    .line 6
    iget-object v1, v1, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 7
    invoke-static {v1, v0}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->j(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    iget-object v1, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apk/x4$try;->for:Z

    iget-object v3, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/apk/x4;->goto(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "to_read"

    .line 10
    iget-object v1, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    .line 12
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 13
    iget-object v1, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicReadActivity;->J(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    .line 15
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 16
    iget-object v1, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    iget-object v2, p0, Lcom/apk/x4$try;->do:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->G(Landroid/app/Activity;Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/apk/x4$try;->new:Lcom/apk/x4;

    .line 18
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 19
    iget-object v1, p0, Lcom/apk/x4$try;->if:Lcom/manhua/data/bean/ComicBean;

    .line 20
    invoke-static {v0, v1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 21
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
