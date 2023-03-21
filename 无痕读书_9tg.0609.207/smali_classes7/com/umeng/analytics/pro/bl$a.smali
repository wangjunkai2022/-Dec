.class public Lcom/umeng/analytics/pro/bl$a;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lcom/umeng/analytics/pro/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bl$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/analytics/pro/bl$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/bl$a;->a:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/bl$a;->b:Z

    .line 6
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bl$a;->a:Z

    .line 7
    iput-boolean p2, p0, Lcom/umeng/analytics/pro/bl$a;->b:Z

    .line 8
    iput p3, p0, Lcom/umeng/analytics/pro/bl$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/cg;)Lcom/umeng/analytics/pro/bs;
    .locals 3

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bl;

    iget-boolean v1, p0, Lcom/umeng/analytics/pro/bl$a;->a:Z

    iget-boolean v2, p0, Lcom/umeng/analytics/pro/bl$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/bl;-><init>(Lcom/umeng/analytics/pro/cg;ZZ)V

    .line 2
    iget p1, p0, Lcom/umeng/analytics/pro/bl$a;->c:I

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/bl;->c(I)V

    :cond_0
    return-object v0
.end method
