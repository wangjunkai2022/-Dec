.class public final Lcom/apk/dd0$do;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/dd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# static fields
.field public static final do:Ljava/lang/reflect/Method;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/Throwable;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "throwableMethods"

    .line 3
    invoke-static {v1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "it"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    .line 4
    invoke-static {v7, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "addSuppressed"

    invoke-static {v8, v9}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const-string v10, "it.parameterTypes"

    invoke-static {v8, v10}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "$this$singleOrNull"

    .line 5
    invoke-static {v8, v10}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v10, v8

    if-ne v10, v9, :cond_0

    aget-object v6, v8, v3

    .line 7
    :cond_0
    invoke-static {v6, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_2
    sput-object v6, Lcom/apk/dd0$do;->do:Ljava/lang/reflect/Method;

    .line 9
    array-length v0, v1

    :goto_3
    if-ge v3, v0, :cond_5

    aget-object v2, v1, v3

    invoke-static {v2, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getSuppressed"

    invoke-static {v2, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method
