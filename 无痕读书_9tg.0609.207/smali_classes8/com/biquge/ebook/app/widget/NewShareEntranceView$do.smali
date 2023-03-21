.class public Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;
.super Lcom/apk/bg;
.source "NewShareEntranceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/NewShareEntranceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/NewShareEntranceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903dd

    if-ne v0, v1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    new-instance v0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object v0, p1, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->new:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/NewShareEntranceView;->new:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    .line 10
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_0

    .line 11
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_1

    .line 14
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_1
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_2

    .line 17
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_2
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_3

    .line 20
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 22
    :cond_3
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_4

    .line 23
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 24
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 25
    :cond_4
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 26
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0903e0

    if-ne p1, v0, :cond_6

    .line 28
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/NewShareEntranceView$do;->do:Lcom/biquge/ebook/app/widget/NewShareEntranceView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100226

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
