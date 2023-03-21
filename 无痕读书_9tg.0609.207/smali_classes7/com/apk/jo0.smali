.class public Lcom/apk/jo0;
.super Lcom/apk/no0;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/jo0$if;
    }
.end annotation

.annotation build Lorg/jsoup/internal/NonnullByDefault;
.end annotation


# static fields
.field public static final goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/jo0;",
            ">;"
        }
    .end annotation
.end field

.field public static final this:Ljava/lang/String;


# instance fields
.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation
.end field

.field public else:Lcom/apk/do0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public new:Lcom/apk/xo0;

.field public try:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/apk/jo0;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/apk/jo0;->goto:Ljava/util/List;

    const-string v0, "\\s+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "/baseUri"

    .line 3
    sput-object v0, Lcom/apk/jo0;->this:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/apk/do0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/apk/no0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/apk/no0;->for:Ljava/util/List;

    iput-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    .line 5
    iput-object p1, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p2}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/apk/jo0;->case()Lcom/apk/do0;

    move-result-object p1

    sget-object p3, Lcom/apk/jo0;->this:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/apk/do0;->super(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/do0;

    :cond_0
    return-void
.end method

.method public static a(Lcom/apk/no0;)Z
    .locals 4
    .param p0    # Lcom/apk/no0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lcom/apk/jo0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lcom/apk/jo0;

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 4
    iget-boolean v2, v2, Lcom/apk/xo0;->else:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast p0, Lcom/apk/jo0;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method

.method public static continue(Ljava/lang/StringBuilder;Lcom/apk/po0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/apk/no0;->do:Lcom/apk/no0;

    invoke-static {v1}, Lcom/apk/jo0;->a(Lcom/apk/no0;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lcom/apk/eo0;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/apk/po0;->interface(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/apk/bo0;->do(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public static instanceof(Lcom/apk/jo0;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/apk/jo0;",
            ">(",
            "Lcom/apk/jo0;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public abstract(Lcom/apk/no0;)Lcom/apk/jo0;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/no0;->package(Lcom/apk/no0;)V

    .line 5
    :cond_0
    iput-object p0, p1, Lcom/apk/no0;->do:Lcom/apk/no0;

    .line 6
    invoke-virtual {p0}, Lcom/apk/jo0;->super()Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p1, Lcom/apk/no0;->if:I

    return-object p0
.end method

.method public b()Lcom/apk/jo0;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast v0, Lcom/apk/jo0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/jo0;->strictfp()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/apk/jo0;->instanceof(Lcom/apk/jo0;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/jo0;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/apk/gp0;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->transient(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/apk/lp0;->goto(Ljava/lang/String;)Lcom/apk/hp0;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/apk/gp0;

    invoke-direct {v0}, Lcom/apk/gp0;-><init>()V

    .line 6
    new-instance v1, Lcom/apk/dp0;

    invoke-direct {v1, p0, v0, p1}, Lcom/apk/dp0;-><init>(Lcom/apk/jo0;Lcom/apk/gp0;Lcom/apk/hp0;)V

    invoke-static {v1, p0}, Lcom/apk/jp0;->do(Lcom/apk/kp0;Lcom/apk/no0;)V

    return-object v0
.end method

.method public case()Lcom/apk/do0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/do0;

    invoke-direct {v0}, Lcom/apk/do0;-><init>()V

    iput-object v0, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    return-object v0
.end method

.method public bridge synthetic class()Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/jo0;->interface()Lcom/apk/jo0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/jo0;->interface()Lcom/apk/jo0;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/apk/no0;)Lcom/apk/no0;
    .locals 2
    .param p1    # Lcom/apk/no0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/no0;->const(Lcom/apk/no0;)Lcom/apk/no0;

    move-result-object p1

    check-cast p1, Lcom/apk/jo0;

    .line 2
    iget-object v0, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apk/do0;->case()Lcom/apk/do0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lcom/apk/jo0;->else:Lcom/apk/do0;

    .line 3
    new-instance v0, Lcom/apk/jo0$if;

    iget-object v1, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/apk/jo0$if;-><init>(Lcom/apk/jo0;I)V

    iput-object v0, p1, Lcom/apk/jo0;->case:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/zn0;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/apk/jo0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->transient(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/apk/lp0;->goto(Ljava/lang/String;)Lcom/apk/hp0;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/apk/ep0;

    invoke-direct {v0, p1}, Lcom/apk/ep0;-><init>(Lcom/apk/hp0;)V

    .line 4
    invoke-virtual {v0, p0, p0}, Lcom/apk/ep0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Lcom/apk/jo0;

    move-result-object p1

    return-object p1
.end method

.method public default()Lcom/apk/no0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast v0, Lcom/apk/jo0;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/apk/jo0$do;

    invoke-direct {v1, p0, v0}, Lcom/apk/jo0$do;-><init>(Lcom/apk/jo0;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/apk/jp0;->do(Lcom/apk/kp0;Lcom/apk/no0;)V

    .line 3
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/jo0;->this:Ljava/lang/String;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 2
    iget-object v2, v1, Lcom/apk/jo0;->else:Lcom/apk/do0;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2, v0}, Lcom/apk/do0;->class(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 4
    iget-object v1, v1, Lcom/apk/jo0;->else:Lcom/apk/do0;

    invoke-virtual {v1, v0}, Lcom/apk/do0;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_1
    iget-object v1, v1, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast v1, Lcom/apk/jo0;

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public final()Lcom/apk/no0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public implements()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/no0;

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Lcom/apk/no0$do;

    invoke-static {v3}, Lcom/apk/sb0;->b(Lcom/apk/no0;)Lcom/apk/ho0$do;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/apk/no0$do;-><init>(Ljava/lang/Appendable;Lcom/apk/ho0$do;)V

    invoke-static {v4, v3}, Lcom/apk/jp0;->do(Lcom/apk/kp0;Lcom/apk/no0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lcom/apk/sb0;->b(Lcom/apk/no0;)Lcom/apk/ho0$do;

    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lcom/apk/ho0$do;->try:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interface()Lcom/apk/jo0;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/no0;->class()Lcom/apk/no0;

    move-result-object v0

    check-cast v0, Lcom/apk/jo0;

    return-object v0
.end method

.method public private()Lcom/apk/no0;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcom/apk/jo0;

    return-object v0
.end method

.method public protected()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/no0;

    .line 3
    instance-of v3, v2, Lcom/apk/go0;

    if-eqz v3, :cond_1

    .line 4
    check-cast v2, Lcom/apk/go0;

    .line 5
    invoke-virtual {v2}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v3, v2, Lcom/apk/fo0;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lcom/apk/fo0;

    .line 9
    invoke-virtual {v2}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_2
    instance-of v3, v2, Lcom/apk/jo0;

    if-eqz v3, :cond_3

    .line 12
    check-cast v2, Lcom/apk/jo0;

    .line 13
    invoke-virtual {v2}, Lcom/apk/jo0;->protected()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_3
    instance-of v3, v2, Lcom/apk/eo0;

    if-eqz v3, :cond_0

    .line 16
    check-cast v2, Lcom/apk/eo0;

    .line 17
    invoke-virtual {v2}, Lcom/apk/mo0;->continue()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public return()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 2
    iget-object v0, v0, Lcom/apk/xo0;->do:Ljava/lang/String;

    return-object v0
.end method

.method public strictfp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apk/jo0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/jo0;->this()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/jo0;->goto:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/jo0;->try:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6
    iget-object v3, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/no0;

    .line 7
    instance-of v4, v3, Lcom/apk/jo0;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lcom/apk/jo0;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/jo0;->try:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public super()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    sget-object v1, Lcom/apk/no0;->for:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/apk/jo0$if;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/apk/jo0$if;-><init>(Lcom/apk/jo0;I)V

    iput-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    return-object v0
.end method

.method public switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p3, Lcom/apk/ho0$do;->try:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 3
    iget-boolean v0, v0, Lcom/apk/xo0;->new:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast v0, Lcom/apk/jo0;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 6
    iget-boolean v0, v0, Lcom/apk/xo0;->new:Z

    if-nez v0, :cond_2

    .line 7
    :cond_0
    iget-boolean v0, p3, Lcom/apk/ho0$do;->case:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    .line 8
    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 9
    iget-boolean v3, v0, Lcom/apk/xo0;->for:Z

    xor-int/2addr v3, v2

    if-eqz v3, :cond_6

    .line 10
    iget-boolean v0, v0, Lcom/apk/xo0;->try:Z

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    check-cast v0, Lcom/apk/jo0;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, v0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 13
    iget-boolean v0, v0, Lcom/apk/xo0;->for:Z

    if-eqz v0, :cond_6

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget v4, p0, Lcom/apk/no0;->if:I

    if-lez v4, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/apk/no0;->if:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/apk/no0;

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 17
    iget-boolean v0, p3, Lcom/apk/ho0$do;->case:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    .line 18
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    .line 19
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/no0;->native(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V

    goto :goto_4

    .line 21
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/no0;->native(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V

    :cond_8
    :goto_4
    const/16 p2, 0x3c

    .line 22
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 24
    iget-object v0, v0, Lcom/apk/xo0;->do:Ljava/lang/String;

    .line 25
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 26
    iget-object p2, p0, Lcom/apk/jo0;->else:Lcom/apk/do0;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1, p3}, Lcom/apk/do0;->catch(Ljava/lang/Appendable;Lcom/apk/ho0$do;)V

    .line 27
    :cond_9
    iget-object p2, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 28
    iget-boolean v3, p2, Lcom/apk/xo0;->try:Z

    if-nez v3, :cond_a

    iget-boolean p2, p2, Lcom/apk/xo0;->case:Z

    if-eqz p2, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_d

    .line 29
    iget-object p2, p3, Lcom/apk/ho0$do;->goto:Lcom/apk/ho0$do$do;

    .line 30
    sget-object p3, Lcom/apk/ho0$do$do;->do:Lcom/apk/ho0$do$do;

    if-ne p2, p3, :cond_c

    iget-object p2, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 31
    iget-boolean p2, p2, Lcom/apk/xo0;->try:Z

    if-eqz p2, :cond_c

    .line 32
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    :cond_c
    const-string p2, " />"

    .line 33
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_5

    .line 34
    :cond_d
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_5
    return-void
.end method

.method public synchronized()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/apk/jo0;->this()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/no0;

    .line 4
    instance-of v3, v2, Lcom/apk/po0;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lcom/apk/po0;

    .line 6
    invoke-static {v0, v2}, Lcom/apk/jo0;->continue(Ljava/lang/StringBuilder;Lcom/apk/po0;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v3, v2, Lcom/apk/jo0;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lcom/apk/jo0;

    .line 9
    iget-object v2, v2, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 10
    iget-object v2, v2, Lcom/apk/xo0;->if:Ljava/lang/String;

    const-string v3, "br"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/apk/po0;->interface(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public this()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public throws(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 2
    iget-boolean v3, v0, Lcom/apk/xo0;->try:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lcom/apk/xo0;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 3
    :cond_2
    iget-boolean v0, p3, Lcom/apk/ho0$do;->try:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 5
    iget-boolean v0, v0, Lcom/apk/xo0;->new:Z

    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p3, Lcom/apk/ho0$do;->case:Z

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/apk/jo0;->case:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/apk/po0;

    if-nez v0, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/apk/no0;->native(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V

    :cond_4
    const-string p2, "</"

    .line 9
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 11
    iget-object p2, p2, Lcom/apk/xo0;->do:Ljava/lang/String;

    .line 12
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_5
    return-void
.end method

.method public transient()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    move-object v1, v0

    check-cast v1, Lcom/apk/jo0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    check-cast v0, Lcom/apk/jo0;

    .line 3
    invoke-virtual {v0}, Lcom/apk/jo0;->strictfp()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apk/jo0;->instanceof(Lcom/apk/jo0;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public volatile()Lcom/apk/gp0;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/gp0;

    invoke-virtual {p0}, Lcom/apk/jo0;->strictfp()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/gp0;-><init>(Ljava/util/List;)V

    return-object v0
.end method
