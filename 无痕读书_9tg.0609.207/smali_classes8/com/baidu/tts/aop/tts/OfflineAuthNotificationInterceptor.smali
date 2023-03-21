.class public Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;
.super Lcom/baidu/tts/aop/AInterceptor;
.source "OfflineAuthNotificationInterceptor.java"


# instance fields
.field public b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/aop/AInterceptor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Lcom/baidu/tts/o/a/c;Lcom/baidu/tts/m/j;Lcom/baidu/tts/m/i;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-static {}, Lcom/baidu/tts/auth/a;->a()Lcom/baidu/tts/auth/a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/baidu/tts/m/j;->d()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/e$a;)Lcom/baidu/tts/auth/d$a;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a(Lcom/baidu/tts/auth/d$a;Lcom/baidu/tts/m/i;)V

    .line 21
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Lcom/baidu/tts/auth/d$a;Lcom/baidu/tts/m/i;)V
    .locals 4

    .line 22
    invoke-virtual {p1}, Lcom/baidu/tts/auth/d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/baidu/tts/auth/d$a;->a()I

    move-result v0

    .line 24
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f\uff0c"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Lcom/baidu/tts/m/i;->a(Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/tts/auth/d$a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743\uff0c"

    .line 27
    invoke-virtual {p2, p1}, Lcom/baidu/tts/m/i;->a(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/tts/m/i;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    check-cast p1, Lcom/baidu/tts/o/a/c;

    .line 3
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->q()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->getMode()Lcom/baidu/tts/f/m;

    move-result-object p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    .line 6
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_0
    sget-object v0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor$1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineAuthNotificationInterceptor"

    invoke-static {v1, v0}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    rem-int/lit8 p2, p2, 0x14

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 11
    aget-object p2, p3, p2

    check-cast p2, Lcom/baidu/tts/m/i;

    .line 12
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 13
    invoke-direct {p0, p1, p3, p2}, Lcom/baidu/tts/aop/tts/OfflineAuthNotificationInterceptor;->a(Lcom/baidu/tts/o/a/c;Lcom/baidu/tts/m/j;Lcom/baidu/tts/m/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    .line 15
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-object p1

    .line 16
    :cond_3
    :goto_0
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->DEFAULT:Ljava/lang/Object;

    return-object p1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/tts/o/a/c;->p()I

    .line 18
    sget-object p1, Lcom/baidu/tts/aop/AInterceptorHandler;->END:Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/aop/AInterceptor;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
