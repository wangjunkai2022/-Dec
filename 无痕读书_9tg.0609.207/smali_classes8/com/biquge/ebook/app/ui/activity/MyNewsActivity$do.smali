.class public Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;
.super Ljava/lang/Object;
.source "MyNewsActivity.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->if:Lcom/apk/x4;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/apk/x4;->while(Z)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    new-instance v0, Lcom/apk/v6;

    invoke-direct {v0, p0}, Lcom/apk/v6;-><init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/apk/f8;

    invoke-direct {v1, p0}, Lcom/apk/f8;-><init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
