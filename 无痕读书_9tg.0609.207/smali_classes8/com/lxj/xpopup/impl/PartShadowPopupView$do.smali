.class public Lcom/lxj/xpopup/impl/PartShadowPopupView$do;
.super Ljava/lang/Object;
.source "PartShadowPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/impl/PartShadowPopupView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/impl/PartShadowPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/impl/PartShadowPopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$do;->do:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/impl/PartShadowPopupView$do;->do:Lcom/lxj/xpopup/impl/PartShadowPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/impl/PartShadowPopupView;->if()V

    return-void
.end method
