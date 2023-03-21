.class public Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/ads/dfa/GDTAppDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration;->showOpenOrInstallAppDialog(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration$1;->do:Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/gdt/GdtAdapterConfiguration$1;->do:Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/v2/GMAppDialogClickListener;->onButtonClick(I)V

    :cond_0
    return-void
.end method
