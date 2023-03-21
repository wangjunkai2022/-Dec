.class public Lcom/apk/e10;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicGroupDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/e10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->mMoreView:Landroid/widget/ImageView;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4
    iget-object v0, p0, Lcom/apk/e10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->goto:Lcom/apk/yg;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v3, v1}, Lcom/apk/yg;->do(II)V

    return-void
.end method
