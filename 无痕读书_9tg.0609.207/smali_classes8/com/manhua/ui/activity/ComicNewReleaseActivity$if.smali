.class public Lcom/manhua/ui/activity/ComicNewReleaseActivity$if;
.super Ljava/lang/Object;
.source "ComicNewReleaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicNewReleaseActivity;->l(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$if;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$if;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->if:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 3
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 4
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
