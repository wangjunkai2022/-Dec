.class public Lcom/manhua/ui/activity/ComicReadActivity$try;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Lcom/apk/dt;


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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$try;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iput-wide p2, p0, Lcom/manhua/ui/activity/ComicReadActivity$try;->do:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$try;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-wide v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$try;->do:J

    invoke-static {v0, v1, v2}, Lcom/manhua/ui/activity/ComicReadActivity;->p(Lcom/manhua/ui/activity/ComicReadActivity;J)V

    return-void
.end method
