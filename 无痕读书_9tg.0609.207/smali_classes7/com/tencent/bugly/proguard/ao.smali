.class public final Lcom/tencent/bugly/proguard/ao;
.super Lcom/tencent/bugly/proguard/j;
.source "BUGLY"


# static fields
.field public static i:[B

.field public static j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:B

.field public b:I

.field public c:[B

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/tencent/bugly/proguard/ao;->i:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/util/Map;

    const-string v1, ""

    .line 3
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    .line 3
    iput v0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->c:[B

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ao;->f:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    .line 7
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    .line 14
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    .line 15
    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->c:[B

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->f:Ljava/lang/String;

    .line 18
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    const/4 v0, 0x4

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    const/4 v0, 0x5

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/lang/String;

    const/4 v0, 0x6

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ao;->h:Ljava/util/Map;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(BI)V

    .line 2
    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a([BI)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    .line 8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_4
    return-void
.end method
