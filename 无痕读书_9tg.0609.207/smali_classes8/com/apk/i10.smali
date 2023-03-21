.class public Lcom/apk/i10;
.super Ljava/lang/Object;
.source "CreateComicGroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/manhua/ui/activity/CreateComicGroupActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i10;->if:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    iput-boolean p2, p0, Lcom/apk/i10;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/apk/i10;->do:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/apk/i10;->if:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 4
    iget-object v1, v1, Lcom/manhua/ui/activity/CreateComicGroupActivity;->do:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/io/Serializable;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/apk/i10;->if:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/apk/i10;->if:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    invoke-virtual {v0}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->finish()V

    return-void
.end method
