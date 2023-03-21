.class public Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;
.super Ljava/lang/Object;
.source "ComicNewReleaseActivity.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicNewReleaseActivity;->initView()V
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
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    invoke-static {p1}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->i(Lcom/manhua/ui/activity/ComicNewReleaseActivity;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNewReleaseActivity$do;->do:Lcom/manhua/ui/activity/ComicNewReleaseActivity;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->for:Lcom/manhua/ui/widget/PageRecyclerView;

    .line 3
    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
