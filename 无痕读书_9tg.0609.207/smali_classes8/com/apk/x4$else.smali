.class public Lcom/apk/x4$else;
.super Lcom/apk/c1;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/x4;->goto(Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/manhua/data/bean/ComicCollectBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Z

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/apk/x4;


# direct methods
.method public constructor <init>(Lcom/apk/x4;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x4$else;->try:Lcom/apk/x4;

    iput-boolean p2, p0, Lcom/apk/x4$else;->do:Z

    iput-object p3, p0, Lcom/apk/x4$else;->if:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/apk/x4$else;->for:Z

    iput-object p5, p0, Lcom/apk/x4$else;->new:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/x4$else;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/x4$else;->if:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/apk/mu;->w(Lcom/manhua/data/bean/ComicBean;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/x4$else;->if:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    .line 5
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    iget-boolean v1, p0, Lcom/apk/x4$else;->for:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/apk/x4$else;->if:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apk/mu;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 9
    iget-object v1, p0, Lcom/apk/x4$else;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicCollectBean;->setGroupTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 10
    throw v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/apk/x4$else;->do:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/x4$else;->try:Lcom/apk/x4;

    invoke-static {v0}, Lcom/apk/x4;->new(Lcom/apk/x4;)V

    .line 5
    iget-object v0, p0, Lcom/apk/x4$else;->try:Lcom/apk/x4;

    .line 6
    iget-object v0, v0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 7
    invoke-static {v0, p1}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->j(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-boolean v0, p0, Lcom/apk/x4$else;->do:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/x4$else;->try:Lcom/apk/x4;

    invoke-static {v0}, Lcom/apk/x4;->for(Lcom/apk/x4;)V

    :cond_0
    return-void
.end method
