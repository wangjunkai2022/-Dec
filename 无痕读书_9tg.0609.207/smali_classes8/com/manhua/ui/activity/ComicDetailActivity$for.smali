.class public Lcom/manhua/ui/activity/ComicDetailActivity$for;
.super Lcom/apk/r5;
.source "ComicDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/manhua/data/bean/ComicBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->else:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->case:Z

    .line 4
    iput-object p1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->for:Lcom/manhua/data/bean/ComicBean;

    .line 5
    invoke-virtual {v0}, Lcom/manhua/ui/activity/ComicDetailActivity;->p()V

    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicDetailActivity$for;->do:Lcom/manhua/ui/activity/ComicDetailActivity;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/manhua/ui/activity/ComicDetailActivity;->else:Z

    const v0, 0x7f10006b

    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void
.end method
