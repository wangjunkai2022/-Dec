.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;
.super Ljava/lang/Object;
.source "CallCenter.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/f;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/c;",
            ")",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public b()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->e:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/g;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/b;->b:Ljava/util/Map;

    return-object v0
.end method
