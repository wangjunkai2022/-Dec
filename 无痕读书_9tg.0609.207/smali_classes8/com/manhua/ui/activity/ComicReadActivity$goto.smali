.class public final Lcom/manhua/ui/activity/ComicReadActivity$goto;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity;->J(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$goto;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity$goto;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$goto;->do:Landroid/app/Activity;

    const-class v1, Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$goto;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    const-string v1, "book"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$goto;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
