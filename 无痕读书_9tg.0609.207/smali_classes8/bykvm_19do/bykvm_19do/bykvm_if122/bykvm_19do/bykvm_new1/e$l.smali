.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;
.super Ljava/lang/Object;
.source "TTAdHeaderBidingRequestCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->b(IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;IIJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->a:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iput p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->c:I

    iput p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->d:I

    iput-wide p6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->e:J

    iput p8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->a:Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->H:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v2, v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v3, v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->w:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->c:I

    iget v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->d:I

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    iget-wide v9, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->e:J

    .line 2
    invoke-static/range {v5 .. v10}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;IILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;J)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v6, v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->v:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;

    iget v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->f:I

    iget-object v8, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->loadInner(Landroid/content/Context;Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Ljava/util/Map;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/h;ILcom/bytedance/msdk/adapter/TTAbsAdLoaderAdapter$AdapterLoaderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;

    iget-object v2, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->N:Lcom/bytedance/msdk/base/TTBaseAd;

    iget-object v1, v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->h:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e$l;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;

    new-instance v4, Lcom/bytedance/msdk/api/AdError;

    const-string v5, "\u81ea\u5b9a\u4e49Adapter \u52a0\u8f7d\u5e7f\u544a\u5185\u90e8\u9519\u8bef "

    invoke-static {v5}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0xbf76

    invoke-direct {v4, v6, v5}, Lcom/bytedance/msdk/api/AdError;-><init>(ILjava/lang/String;)V

    const-string v5, ""

    .line 6
    invoke-static {v5, v2, v1, v3, v4}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/h;->a(Ljava/lang/String;Lcom/bytedance/msdk/base/TTBaseAd;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/i;Lcom/bytedance/msdk/api/AdError;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
