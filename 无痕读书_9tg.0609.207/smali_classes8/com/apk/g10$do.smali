.class public Lcom/apk/g10$do;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/g10;->do()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/g10;


# direct methods
.method public constructor <init>(Lcom/apk/g10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/g10$do;->do:Lcom/apk/g10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/g10$do;->do:Lcom/apk/g10;

    iget-object v0, v0, Lcom/apk/g10;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/g10$do;->do:Lcom/apk/g10;

    iget-object v1, v0, Lcom/apk/g10;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    iget-boolean v0, v0, Lcom/apk/g10;->do:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x27e7

    goto :goto_0

    :cond_0
    const/16 v0, 0x27e5

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->o(Landroid/app/Activity;Lcom/apk/hf;I)V

    :cond_1
    return-void
.end method
