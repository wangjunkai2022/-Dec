.class public Lcom/umeng/analytics/pro/bm$a;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lcom/umeng/analytics/pro/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/umeng/analytics/pro/bm$a;->a:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    .line 4
    iput-wide v0, p0, Lcom/umeng/analytics/pro/bm$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/cg;)Lcom/umeng/analytics/pro/bs;
    .locals 3

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    iget-wide v1, p0, Lcom/umeng/analytics/pro/bm$a;->a:J

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;J)V

    return-object v0
.end method
