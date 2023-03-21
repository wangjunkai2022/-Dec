.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;
.super Ljava/lang/Object;
.source "TTServerBiddingCore.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_goto109/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(Ljava/lang/String;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/bytedance/msdk/api/AdSlot;

.field public final synthetic c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

.field public final synthetic d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;

.field public final synthetic e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;

    iput-wide p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->a:J

    iput-object p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->b:Lcom/bytedance/msdk/api/AdSlot;

    iput-object p5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    iput-object p6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;

    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->a:J

    iget-object v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->b:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    iget-object v7, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;

    const/4 v5, 0x4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JLcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;ILbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/f;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/AdError;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->e:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;

    iget-wide v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->a:J

    iget-object v5, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->b:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v6, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f$b;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;

    const/4 v3, 0x4

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/f;JILcom/bytedance/msdk/api/AdError;Lcom/bytedance/msdk/api/AdSlot;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_if122/d$a;)V

    return-void
.end method
