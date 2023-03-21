.class public Lcom/apk/rc;
.super Ljava/lang/Object;
.source "ConfigImagePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/rc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/rc;->do:Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
