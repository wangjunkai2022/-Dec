.class public Lcom/biquge/ebook/app/ui/view/StarPopupView$for;
.super Lcom/apk/u5;
.source "StarPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/StarPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/StarPopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/StarPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/StarPopupView$for;->do:Lcom/biquge/ebook/app/ui/view/StarPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
