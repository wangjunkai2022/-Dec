.class public abstract Lcom/apk/qy;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/apk/qy;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public break:Lcom/apk/fy;

.field public case:Lcom/apk/xw;

.field public transient catch:Lcom/apk/zg0;

.field public transient class:Lcom/apk/vw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/vw<",
            "TT;>;"
        }
    .end annotation
.end field

.field public transient const:Lcom/apk/mx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mx<",
            "TT;>;"
        }
    .end annotation
.end field

.field public do:Ljava/lang/String;

.field public else:Ljava/lang/String;

.field public transient final:Lcom/apk/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/nx<",
            "TT;>;"
        }
    .end annotation
.end field

.field public transient for:Lcom/apk/xg0;

.field public goto:J

.field public if:Ljava/lang/String;

.field public transient new:Ljava/lang/Object;

.field public this:Lcom/apk/gy;

.field public try:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/gy;

    invoke-direct {v0}, Lcom/apk/gy;-><init>()V

    iput-object v0, p0, Lcom/apk/qy;->this:Lcom/apk/gy;

    .line 3
    new-instance v0, Lcom/apk/fy;

    invoke-direct {v0}, Lcom/apk/fy;-><init>()V

    iput-object v0, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    .line 4
    iput-object p1, p0, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/apk/qy;->if:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 7
    sget-object v0, Lcom/apk/fy;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2d

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";q=0.8"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/fy;->for:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/apk/fy;->for:Ljava/lang/String;

    .line 16
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    iget-object v1, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    const-string v2, "Accept-Language"

    invoke-virtual {v1, v2, v0}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_2
    sget-object v0, Lcom/apk/fy;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    :try_start_0
    sget-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 20
    invoke-virtual {v0}, Lcom/apk/tw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/fy;->new:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "http.agent"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/fy;->new:Ljava/lang/String;

    .line 22
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    sget-object v1, Lcom/apk/fy;->new:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 24
    sget-object v4, Lcom/apk/fy;->new:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_4

    const/16 v5, 0x7f

    if-lt v4, v5, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 27
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/fy;->new:Ljava/lang/String;

    .line 28
    :cond_6
    sget-object v0, Lcom/apk/fy;->new:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 30
    iget-object v1, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_9

    .line 31
    iget-object v0, p1, Lcom/apk/tw;->new:Lcom/apk/fy;

    if-eqz v0, :cond_8

    .line 32
    invoke-virtual {p0, v0}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

    .line 33
    :cond_8
    iget v0, p1, Lcom/apk/tw;->try:I

    .line 34
    iput v0, p0, Lcom/apk/qy;->try:I

    .line 35
    iget-object v0, p1, Lcom/apk/tw;->case:Lcom/apk/xw;

    .line 36
    iput-object v0, p0, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 37
    iget-wide v0, p1, Lcom/apk/tw;->else:J

    .line 38
    iput-wide v0, p0, Lcom/apk/qy;->goto:J

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 39
    throw p1
.end method


# virtual methods
.method public break()Lcom/apk/zf0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/qy;->goto()Lcom/apk/bh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Lcom/apk/py;

    iget-object v3, p0, Lcom/apk/qy;->const:Lcom/apk/mx;

    invoke-direct {v2, v0, v3}, Lcom/apk/py;-><init>(Lcom/apk/bh0;Lcom/apk/mx;)V

    .line 3
    iput-object v1, v2, Lcom/apk/py;->new:Lcom/apk/py$if;

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/qy;->else(Lcom/apk/bh0;)Lcom/apk/zg0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/qy;->catch:Lcom/apk/zg0;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/apk/qy;->else(Lcom/apk/bh0;)Lcom/apk/zg0;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/qy;->catch:Lcom/apk/zg0;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/apk/qy;->for:Lcom/apk/xg0;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 8
    iget-object v0, v0, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 9
    iput-object v0, p0, Lcom/apk/qy;->for:Lcom/apk/xg0;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/apk/qy;->for:Lcom/apk/xg0;

    iget-object v1, p0, Lcom/apk/qy;->catch:Lcom/apk/zg0;

    invoke-virtual {v0, v1}, Lcom/apk/xg0;->do(Lcom/apk/zg0;)Lcom/apk/zf0;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/apk/vw;)Lcom/apk/qy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/vw<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/qy;->class:Lcom/apk/vw;

    return-object p0
.end method

.method public case(Lcom/apk/mx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/qy;->const:Lcom/apk/mx;

    .line 2
    invoke-virtual {p0}, Lcom/apk/qy;->do()Lcom/apk/vw;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/apk/uw;

    .line 4
    iget-object v1, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    check-cast v1, Lcom/apk/ax;

    invoke-virtual {v1}, Lcom/apk/ax;->else()Lcom/apk/ww;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    invoke-interface {v0, v1, p1}, Lcom/apk/bx;->try(Lcom/apk/ww;Lcom/apk/mx;)V

    return-void
.end method

.method public catch(Lcom/apk/fy;)Lcom/apk/qy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/fy;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/qy;->break:Lcom/apk/fy;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/apk/fy;->do:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public varargs class(Ljava/util/Map;[Z)Lcom/apk/qy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/qy;->this:Lcom/apk/gy;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    array-length v3, p2

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 6
    aget-boolean v3, p2, v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/apk/gy;->do(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v2, v1, v3}, Lcom/apk/gy;->do(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0

    :cond_3
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public do()Lcom/apk/vw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/vw<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/qy;->class:Lcom/apk/vw;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/uw;

    invoke-direct {v0, p0}, Lcom/apk/uw;-><init>(Lcom/apk/qy;)V

    :cond_0
    return-object v0
.end method

.method public abstract else(Lcom/apk/bh0;)Lcom/apk/zg0;
.end method

.method public for()Lcom/apk/ch0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qy;->break()Lcom/apk/zf0;

    move-result-object v0

    check-cast v0, Lcom/apk/xh0;

    invoke-virtual {v0}, Lcom/apk/xh0;->throw()Lcom/apk/ch0;

    move-result-object v0

    return-object v0
.end method

.method public abstract goto()Lcom/apk/bh0;
.end method

.method public if(J)Lcom/apk/qy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Lcom/apk/qy;->goto:J

    return-object p0
.end method

.method public new(Lcom/apk/mx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/qy;->const:Lcom/apk/mx;

    .line 2
    invoke-virtual {p0}, Lcom/apk/qy;->do()Lcom/apk/vw;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/apk/uw;

    .line 4
    iget-object v1, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    check-cast v1, Lcom/apk/ax;

    invoke-virtual {v1}, Lcom/apk/ax;->else()Lcom/apk/ww;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    invoke-interface {v0, v1, p1}, Lcom/apk/bx;->new(Lcom/apk/ww;Lcom/apk/mx;)V

    return-void
.end method

.method public this()Lcom/apk/nx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/nx<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/qy;->final:Lcom/apk/nx;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/qy;->const:Lcom/apk/mx;

    iput-object v0, p0, Lcom/apk/qy;->final:Lcom/apk/nx;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/qy;->final:Lcom/apk/nx;

    return-object v0
.end method

.method public try()Lcom/apk/iy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/iy<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/qy;->do()Lcom/apk/vw;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/apk/uw;

    .line 3
    iget-object v1, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    check-cast v1, Lcom/apk/ax;

    invoke-virtual {v1}, Lcom/apk/ax;->else()Lcom/apk/ww;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lcom/apk/uw;->do:Lcom/apk/bx;

    invoke-interface {v0, v1}, Lcom/apk/bx;->for(Lcom/apk/ww;)Lcom/apk/iy;

    move-result-object v0

    return-object v0
.end method
