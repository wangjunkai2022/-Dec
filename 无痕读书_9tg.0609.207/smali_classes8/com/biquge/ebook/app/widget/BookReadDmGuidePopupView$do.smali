.class public Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView$do;
.super Lcom/apk/bg;
.source "BookReadDmGuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/BookReadDmGuidePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
