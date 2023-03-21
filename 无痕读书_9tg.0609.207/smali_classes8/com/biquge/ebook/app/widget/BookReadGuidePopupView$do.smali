.class public Lcom/biquge/ebook/app/widget/BookReadGuidePopupView$do;
.super Lcom/apk/bg;
.source "BookReadGuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookReadGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/BookReadGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/BookReadGuidePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
