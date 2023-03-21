.class public Lcom/apk/pm0;
.super Ljava/lang/Object;
.source "CleanerProperties.java"

# interfaces
.implements Lcom/apk/sn0;


# instance fields
.field public break:Z

.field public case:Z

.field public catch:Ljava/lang/String;

.field public class:Z

.field public const:Z

.field public do:Lcom/apk/cn0;

.field public else:Z

.field public final:Z

.field public for:Z

.field public goto:Z

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public import:Ljava/lang/String;

.field public native:Lcom/apk/qm0;

.field public new:Z

.field public public:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/sn0;",
            ">;"
        }
    .end annotation
.end field

.field public return:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/apk/tn0;",
            ">;"
        }
    .end annotation
.end field

.field public static:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/apk/tn0;",
            ">;"
        }
    .end annotation
.end field

.field public super:Z

.field public this:Lcom/apk/fn0;

.field public throw:Z

.field public try:Z

.field public while:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/qm0;

    invoke-direct {v0}, Lcom/apk/qm0;-><init>()V

    iput-object v0, p0, Lcom/apk/pm0;->native:Lcom/apk/qm0;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apk/pm0;->static:Ljava/util/Set;

    const-string v0, "script,style"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/pm0;->if:Ljava/util/List;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/apk/pm0;->for:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/apk/pm0;->new:Z

    .line 8
    iput-boolean v1, p0, Lcom/apk/pm0;->try:Z

    .line 9
    iput-boolean v1, p0, Lcom/apk/pm0;->case:Z

    .line 10
    iput-boolean v1, p0, Lcom/apk/pm0;->goto:Z

    .line 11
    iput-boolean v1, p0, Lcom/apk/pm0;->else:Z

    .line 12
    sget-object v2, Lcom/apk/fn0;->for:Lcom/apk/fn0;

    .line 13
    iput-object v2, p0, Lcom/apk/pm0;->this:Lcom/apk/fn0;

    .line 14
    iput-boolean v0, p0, Lcom/apk/pm0;->break:Z

    .line 15
    iput-boolean v1, p0, Lcom/apk/pm0;->const:Z

    .line 16
    iput-boolean v0, p0, Lcom/apk/pm0;->class:Z

    .line 17
    iput-boolean v0, p0, Lcom/apk/pm0;->final:Z

    .line 18
    iput-boolean v0, p0, Lcom/apk/pm0;->while:Z

    const-string v2, "="

    .line 19
    iput-object v2, p0, Lcom/apk/pm0;->import:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 21
    iget-object v2, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    sget-object v3, Lcom/apk/vn0;->do:Lcom/apk/vn0;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v2, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/apk/pm0;->try(Ljava/util/Set;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/apk/pm0;->static:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 24
    iget-object v2, p0, Lcom/apk/pm0;->static:Ljava/util/Set;

    invoke-virtual {p0, v2, v3}, Lcom/apk/pm0;->try(Ljava/util/Set;Ljava/lang/String;)V

    const-string v2, "self"

    .line 25
    iput-object v2, p0, Lcom/apk/pm0;->catch:Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/apk/pm0;->native:Lcom/apk/qm0;

    .line 27
    iget-object v2, v2, Lcom/apk/qm0;->do:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 28
    iget-object v2, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 29
    iget-object v2, p0, Lcom/apk/pm0;->return:Ljava/util/Set;

    sget-object v3, Lcom/apk/vn0;->do:Lcom/apk/vn0;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v2, Lcom/apk/ym0;->if:Lcom/apk/ym0;

    iput-object v2, p0, Lcom/apk/pm0;->do:Lcom/apk/cn0;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/apk/pm0;->public:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lcom/apk/pm0;->super:Z

    .line 33
    iput-boolean v0, p0, Lcom/apk/pm0;->throw:Z

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/tn0;Lcom/apk/kn0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pm0;->public:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/sn0;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/apk/sn0;->do(Lcom/apk/tn0;Lcom/apk/kn0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public for(ZLcom/apk/kn0;Lcom/apk/rn0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pm0;->public:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/sn0;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/apk/sn0;->for(ZLcom/apk/kn0;Lcom/apk/rn0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public if(ZLcom/apk/kn0;Lcom/apk/rn0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pm0;->public:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/sn0;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/apk/sn0;->if(ZLcom/apk/kn0;Lcom/apk/rn0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public new(ZLcom/apk/kn0;Lcom/apk/rn0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pm0;->public:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/sn0;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/apk/sn0;->new(ZLcom/apk/kn0;Lcom/apk/rn0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final try(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/apk/tn0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lcom/apk/wn0;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/apk/wn0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
