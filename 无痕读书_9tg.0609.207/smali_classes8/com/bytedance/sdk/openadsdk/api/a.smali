.class public Lcom/bytedance/sdk/openadsdk/api/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static b:I = 0x4


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_3

    .line 13
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, " null "

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, " "

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/a;->a(I)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TTLogger"

    .line 7
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x2

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 9
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x5

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 10
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 11
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/a;->a([Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x3

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 4
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x6

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x4

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x5

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    const/4 p1, 0x6

    return-void
.end method
