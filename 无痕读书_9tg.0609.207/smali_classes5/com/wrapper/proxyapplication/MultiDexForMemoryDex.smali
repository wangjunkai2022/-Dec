.class public Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;
.super Ljava/lang/Object;
.source "MultiDexForMemoryDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wrapper/proxyapplication/MultiDexForMemoryDex$V26;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MultiDexForMemoryDex"

.field static hasInjected:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 20
    invoke-static {p0, p1, p2}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 239
    invoke-static {p0, p1}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 240
    nop

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    .line 241
    nop

    move-result-object v1

    nop

    move-result-object v1

    array-length v2, v0

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    nop

    nop

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_0

    sget v2, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->hasInjected:I

    if-nez v2, :cond_0

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 244
    array-length v2, v0

    sub-int/2addr v2, v4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v2, v0

    sub-int/2addr v2, v4

    array-length v5, p2

    invoke-static {p2, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    array-length v2, v0

    sub-int/2addr v2, v4

    array-length p2, p2

    array-length v3, v0

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    invoke-static {v0, v2, v1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 248
    :cond_0
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length p2, p2

    array-length v2, v0

    invoke-static {v0, v3, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    :goto_0
    nop

    nop
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 164
    nop

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 166
    :try_start_0
    nop

    move-result-object v1

    .line 167
    nop

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 168
    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 164
    :catch_0
    nop

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    nop

    nop

    const-string p1, " not found in "

    nop

    nop

    move-result-object p0

    nop

    nop

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 209
    nop

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 211
    :try_start_0
    nop

    move-result-object v1

    .line 213
    nop

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 214
    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 209
    :catch_0
    nop

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    nop

    nop

    const-string p1, " with parameters "

    nop

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    const-string p1, " not found in "

    nop

    .line 224
    nop

    move-result-object p0

    nop

    nop

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static varargs findMethodinClazz(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    .line 182
    :try_start_0
    nop

    move-result-object v0

    .line 184
    nop

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 185
    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 180
    :catch_0
    nop

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    nop

    nop

    const-string p1, " with parameters "

    nop

    .line 195
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    const-string p1, " not found in "

    nop

    nop

    nop

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static getprefixname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 65
    nop

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 67
    nop

    move-result-object p0

    :cond_0
    const-string v0, "."

    .line 72
    nop

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 74
    nop

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static installDexes(Ljava/lang/ClassLoader;[Ljava/nio/ByteBuffer;ZZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "pathList"

    .line 133
    invoke-static {p0, v0}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 135
    :try_start_1
    invoke-static {p0, v0, p1, p2, p3}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex$V26;->access$000(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/nio/ByteBuffer;ZZ)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_4

    return-object p0

    :catch_0
    move-exception p0

    .line 147
    :try_start_2
    nop

    goto :goto_0

    :catch_1
    move-exception p0

    .line 144
    nop

    goto :goto_0

    :catch_2
    move-exception p0

    .line 141
    nop

    goto :goto_0

    :catch_3
    move-exception p0

    .line 138
    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static openallDexes(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->splitPaths(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "pathList"

    .line 89
    invoke-static {p0, v1}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_9

    .line 91
    :try_start_1
    nop

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    const-string v1, "loadDexFile"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 93
    const-class v4, Ljava/io/File;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/io/File;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p0, v1, v3}, Lcom/wrapper/proxyapplication/MultiDexForMemoryDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_9

    .line 95
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_9

    .line 96
    :try_start_4
    nop

    move-result-object p1

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v5

    aput-object v0, p2, v6

    nop

    move-result-object p2

    .line 99
    nop
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_0
    move-object p2, v3

    goto :goto_6

    :catch_0
    move-exception p0

    move-object p2, v3

    goto :goto_5

    :catch_1
    move-exception p0

    move-object p2, v3

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p2, v3

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p2, v3

    goto :goto_2

    :catch_4
    move-exception p0

    move-object p2, v3

    goto :goto_1

    :catch_5
    move-exception p0

    .line 107
    :goto_1
    :try_start_5
    nop
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_6

    :catch_6
    move-exception p0

    .line 111
    :goto_2
    :try_start_6
    nop
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_6

    :catch_7
    move-exception p0

    .line 118
    :goto_3
    :try_start_7
    nop

    goto :goto_6

    :catch_8
    move-exception p0

    .line 115
    :goto_4
    nop
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_6

    :catch_9
    move-exception p0

    .line 122
    :goto_5
    nop

    :goto_6
    return-object p2
.end method

.method private static splitPaths(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 51
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    nop

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 52
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
