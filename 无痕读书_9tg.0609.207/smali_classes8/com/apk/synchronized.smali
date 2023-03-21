.class public Lcom/apk/synchronized;
.super Lcom/apk/c1;
.source "AdViewText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Lcom/apk/d1;

.field public final synthetic if:Lorg/json/JSONObject;

.field public final synthetic new:Lcom/apk/b;


# direct methods
.method public constructor <init>(Lcom/apk/b;Lorg/json/JSONObject;Lcom/apk/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    iput-object p2, p0, Lcom/apk/synchronized;->if:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/apk/synchronized;->for:Lcom/apk/d1;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    iget-object v1, p0, Lcom/apk/synchronized;->if:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/apk/b;->catch:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    .line 4
    iget-object v0, v0, Lcom/apk/b;->catch:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    iget-object v1, p0, Lcom/apk/synchronized;->if:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/apk/b;->class:J

    .line 8
    iget-object v0, p0, Lcom/apk/synchronized;->if:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/apk/finally;->const(Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/synchronized;->do:Z

    .line 9
    iget-object v0, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    iget-object v1, p0, Lcom/apk/synchronized;->if:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v1

    .line 10
    iput-boolean v1, v0, Lcom/apk/b;->super:Z

    .line 11
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    .line 3
    iget-object p1, p1, Lcom/apk/b;->catch:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    invoke-virtual {p1}, Lcom/apk/b;->do()V

    .line 7
    iget-boolean p1, p0, Lcom/apk/synchronized;->do:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    .line 9
    iget-object p1, p1, Lcom/apk/b;->else:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/apk/synchronized;->new:Lcom/apk/b;

    .line 12
    iget-object p1, p1, Lcom/apk/b;->else:Landroid/widget/ImageView;

    .line 13
    new-instance v0, Lcom/apk/synchronized$do;

    invoke-direct {v0, p0}, Lcom/apk/synchronized$do;-><init>(Lcom/apk/synchronized;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
