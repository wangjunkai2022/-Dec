.class public Lcom/manhua/ui/activity/ComicReadActivity$new;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity;->return(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic if:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iput-wide p2, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->do:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    new-instance v1, Lcom/manhua/ui/activity/ComicReadActivity$new$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicReadActivity$new$do;-><init>(Lcom/manhua/ui/activity/ComicReadActivity$new;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/apk/mu;->else(Landroid/content/Context;ZZLcom/apk/g1;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 4
    invoke-virtual {v0}, Lcom/apk/f00;->i()V

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-wide v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$new;->do:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->v(J)V

    return-void
.end method
