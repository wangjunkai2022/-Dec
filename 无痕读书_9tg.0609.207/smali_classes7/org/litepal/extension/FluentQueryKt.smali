.class public final Lorg/litepal/extension/FluentQueryKt;
.super Ljava/lang/Object;
.source "FluentQuery.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u001a$\u0010\u0005\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001c\u0010\u0008\u001a\u00020\u0007\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\u0008\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\"\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a*\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000f\u001a@\u0010\u0012\u001a&\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000 \u0011*\u0012\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u00100\u0010\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001aH\u0010\u0012\u001a&\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000 \u0011*\u0012\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u00100\u0010\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0087\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0014\u001a\u001e\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a&\u0010\u0015\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0017\u001a\"\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a\u001e\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0086\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u0016\u001a&\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0086\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u0017\u001a,\u0010\u001e\u001a\u00028\u0001\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001\"\u0006\u0008\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a,\u0010\u001e\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\u001e\u0010!\u001a,\u0010\"\u001a\u00028\u0001\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001\"\u0006\u0008\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\"\u0010\u001f\u001a,\u0010\"\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008\"\u0010!\u001a,\u0010#\u001a\u00028\u0001\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001\"\u0006\u0008\u0001\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010\u001f\u001a,\u0010#\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u001c\u0018\u0001*\u00020\u00012\u0006\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010!\u00a8\u0006$"
    }
    d2 = {
        "T",
        "Lorg/litepal/FluentQuery;",
        "",
        "column",
        "",
        "average",
        "(Lorg/litepal/FluentQuery;Ljava/lang/String;)D",
        "",
        "count",
        "(Lorg/litepal/FluentQuery;)I",
        "",
        "find",
        "(Lorg/litepal/FluentQuery;)Ljava/util/List;",
        "",
        "isEager",
        "(Lorg/litepal/FluentQuery;Z)Ljava/util/List;",
        "Lorg/litepal/crud/async/FindMultiExecutor;",
        "kotlin.jvm.PlatformType",
        "findAsync",
        "(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindMultiExecutor;",
        "(Lorg/litepal/FluentQuery;Z)Lorg/litepal/crud/async/FindMultiExecutor;",
        "findFirst",
        "(Lorg/litepal/FluentQuery;)Ljava/lang/Object;",
        "(Lorg/litepal/FluentQuery;Z)Ljava/lang/Object;",
        "Lorg/litepal/crud/async/FindExecutor;",
        "findFirstAsync",
        "(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindExecutor;",
        "findLast",
        "R",
        "columnName",
        "max",
        "(Lorg/litepal/FluentQuery;Ljava/lang/String;)Ljava/lang/Object;",
        "tableName",
        "(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;",
        "min",
        "sum",
        "core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# direct methods
.method public static final synthetic average(Lorg/litepal/FluentQuery;Ljava/lang/String;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    const-string v0, "$this$average"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "column"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic count(Lorg/litepal/FluentQuery;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")I"
        }
    .end annotation

    const-string v0, "$this$count"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic find(Lorg/litepal/FluentQuery;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$find"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic find(Lorg/litepal/FluentQuery;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string p1, "$this$find"

    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findAsync(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated and will be removed in the future releases."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Handle async db operation in your own logic instead."
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "$this$findAsync"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findAsync(Lorg/litepal/FluentQuery;Z)Lorg/litepal/crud/async/FindMultiExecutor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Z)",
            "Lorg/litepal/crud/async/FindMultiExecutor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated and will be removed in the future releases."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Handle async db operation in your own logic instead."
            imports = {}
        .end subannotation
    .end annotation

    const-string p1, "$this$findAsync"

    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findFirst(Lorg/litepal/FluentQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$findFirst"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findFirst(Lorg/litepal/FluentQuery;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Z)TT;"
        }
    .end annotation

    const-string p1, "$this$findFirst"

    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findFirstAsync(Lorg/litepal/FluentQuery;)Lorg/litepal/crud/async/FindExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")",
            "Lorg/litepal/crud/async/FindExecutor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "This method is deprecated and will be removed in the future releases."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Handle async db operation in your own logic instead."
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "$this$findFirstAsync"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findLast(Lorg/litepal/FluentQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$findLast"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic findLast(Lorg/litepal/FluentQuery;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Z)TT;"
        }
    .end annotation

    const-string p1, "$this$findLast"

    invoke-static {p0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic max(Lorg/litepal/FluentQuery;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$max"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic max(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$max"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tableName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic min(Lorg/litepal/FluentQuery;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$min"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic min(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$min"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tableName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic sum(Lorg/litepal/FluentQuery;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic sum(Lorg/litepal/FluentQuery;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/litepal/FluentQuery;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$sum"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tableName"

    invoke-static {p1, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "columnName"

    invoke-static {p2, p0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/nd0;->case()V

    const/4 p0, 0x0

    throw p0
.end method
