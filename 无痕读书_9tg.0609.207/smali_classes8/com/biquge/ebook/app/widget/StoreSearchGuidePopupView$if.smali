.class public Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;
.super Lcom/apk/bg;
.source "StoreSearchGuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->if()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$if;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
