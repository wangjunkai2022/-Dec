.class public Lcom/apk/package;
.super Lcom/apk/d1;
.source "AdRectanglePopupView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/AdRectanglePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/AdRectanglePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/package;->do:Lcom/biquge/ebook/app/ad/AdRectanglePopupView;

    invoke-direct {p0}, Lcom/apk/d1;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/package;->do:Lcom/biquge/ebook/app/ad/AdRectanglePopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
