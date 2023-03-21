.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$case;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->menuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$case;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$case;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 3
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 4
    new-instance v1, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$case;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 5
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 6
    invoke-direct {v1, v2}, Lcom/biquge/ebook/app/ui/view/ReadFontPopupView;-><init>(Landroid/content/Context;)V

    .line 7
    instance-of v2, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v2, :cond_0

    .line 8
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_0
    sget-boolean v2, Lcom/apk/zu;->try:Z

    .line 11
    iput-boolean v2, v0, Lcom/apk/lv;->continue:Z

    .line 12
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 13
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method
