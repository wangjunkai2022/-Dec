.class public Lcom/apk/jn0;
.super Ljava/lang/Object;
.source "TagInfo.java"


# instance fields
.field public break:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public case:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public catch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public class:Ljava/lang/String;

.field public const:Ljava/lang/String;

.field public do:Ljava/lang/String;

.field public else:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final:Z

.field public for:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public goto:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/um0;

.field public new:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public super:Z

.field public this:Lcom/apk/lm0;

.field public try:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/apk/um0;Lcom/apk/lm0;ZZLcom/apk/rm0;Lcom/apk/vm0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->for:Ljava/util/Set;

    .line 3
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->new:Ljava/util/Set;

    .line 4
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->try:Ljava/util/Set;

    .line 5
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->case:Ljava/util/Set;

    .line 6
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->else:Ljava/util/Set;

    .line 7
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->goto:Ljava/util/Set;

    .line 8
    sget-object p6, Lcom/apk/lm0;->for:Lcom/apk/lm0;

    iput-object p6, p0, Lcom/apk/jn0;->this:Lcom/apk/lm0;

    .line 9
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->break:Ljava/util/Set;

    .line 10
    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    iput-object p6, p0, Lcom/apk/jn0;->catch:Ljava/util/Set;

    const/4 p6, 0x0

    .line 11
    iput-object p6, p0, Lcom/apk/jn0;->class:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/apk/jn0;->const:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/apk/jn0;->do:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/apk/jn0;->if:Lcom/apk/um0;

    .line 15
    iput-object p3, p0, Lcom/apk/jn0;->this:Lcom/apk/lm0;

    .line 16
    iput-boolean p4, p0, Lcom/apk/jn0;->final:Z

    .line 17
    iput-boolean p5, p0, Lcom/apk/jn0;->super:Z

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->break:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/apk/jn0;->new:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public case(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->goto:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public do()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/um0;->do:Lcom/apk/um0;

    iget-object v1, p0, Lcom/apk/jn0;->if:Lcom/apk/um0;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apk/jn0;->try:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public else(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->catch:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/apk/jn0;->new:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->try:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goto(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->case:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/km0;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/jn0;->if:Lcom/apk/um0;

    sget-object v1, Lcom/apk/um0;->if:Lcom/apk/um0;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/apk/mn0;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/apk/mn0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/mn0;->try()Ljava/lang/String;

    move-result-object v0

    const-string v1, "script"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/jn0;->if:Lcom/apk/um0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Lcom/apk/mn0;

    xor-int/2addr p1, v2

    return p1

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/apk/tm0;

    if-eqz v0, :cond_3

    .line 8
    check-cast p1, Lcom/apk/tm0;

    .line 9
    iget-boolean p1, p1, Lcom/apk/tm0;->for:Z

    return p1

    .line 10
    :cond_3
    instance-of p1, p1, Lcom/apk/mn0;

    if-nez p1, :cond_4

    return v2

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/apk/jn0;->try:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    instance-of v0, p1, Lcom/apk/mn0;

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/apk/jn0;->try:Ljava/util/Set;

    check-cast p1, Lcom/apk/mn0;

    invoke-virtual {p1}, Lcom/apk/mn0;->try()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/apk/jn0;->case:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15
    instance-of v0, p1, Lcom/apk/mn0;

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/apk/jn0;->case:Ljava/util/Set;

    check-cast p1, Lcom/apk/mn0;

    invoke-virtual {p1}, Lcom/apk/mn0;->try()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_7
    return v2
.end method

.method public new(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->else:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/apk/jn0;->for:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public this(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->new:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public try(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/apk/jn0;->for:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
