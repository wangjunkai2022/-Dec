.class public abstract Lcom/apk/yo0$this;
.super Lcom/apk/yo0;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "this"
.end annotation


# instance fields
.field public break:Z

.field public case:Z

.field public catch:Z

.field public class:Lcom/apk/do0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final else:Ljava/lang/StringBuilder;

.field public for:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public goto:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public if:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final new:Ljava/lang/StringBuilder;

.field public this:Z

.field public try:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/apk/yo0;-><init>(Lcom/apk/yo0$do;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/yo0$this;->case:Z

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    .line 5
    iput-boolean v0, p0, Lcom/apk/yo0$this;->this:Z

    .line 6
    iput-boolean v0, p0, Lcom/apk/yo0$this;->break:Z

    .line 7
    iput-boolean v0, p0, Lcom/apk/yo0$this;->catch:Z

    return-void
.end method


# virtual methods
.method public final break(C)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$this;->super()V

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final catch(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$this;->super()V

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final class([I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$this;->super()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 3
    iget-object v3, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final const(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/yo0$this;->final(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic else()Lcom/apk/yo0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$this;->return()Lcom/apk/yo0$this;

    move-result-object v0

    return-object v0
.end method

.method public final final(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/apk/vo0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    return-void
.end method

.method public final import()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/apk/sb0;->extends(Z)V

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    return-object v0
.end method

.method public final native(Ljava/lang/String;)Lcom/apk/yo0$this;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/apk/vo0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    return-object p0
.end method

.method public final public()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/do0;

    invoke-direct {v0}, Lcom/apk/do0;-><init>()V

    iput-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/apk/yo0$this;->case:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    .line 4
    iget v0, v0, Lcom/apk/do0;->do:I

    const/16 v2, 0x200

    if-ge v0, v2, :cond_5

    .line 5
    iget-object v0, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 8
    iget-boolean v2, p0, Lcom/apk/yo0$this;->this:Z

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    goto :goto_1

    .line 10
    :cond_3
    iget-boolean v2, p0, Lcom/apk/yo0$this;->break:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    invoke-virtual {v3, v0, v2}, Lcom/apk/do0;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/do0;

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 13
    iput-object v1, p0, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/apk/yo0$this;->case:Z

    .line 15
    iget-object v2, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 16
    iput-object v1, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/apk/yo0$this;->this:Z

    .line 18
    iput-boolean v0, p0, Lcom/apk/yo0$this;->break:Z

    return-void
.end method

.method public return()Lcom/apk/yo0$this;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 4
    iput-object v0, p0, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/apk/yo0$this;->case:Z

    .line 6
    iget-object v2, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 7
    iput-object v0, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    .line 8
    iput-boolean v1, p0, Lcom/apk/yo0$this;->break:Z

    .line 9
    iput-boolean v1, p0, Lcom/apk/yo0$this;->this:Z

    .line 10
    iput-boolean v1, p0, Lcom/apk/yo0$this;->catch:Z

    .line 11
    iput-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    return-object p0
.end method

.method public final static()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[unset]"

    :goto_0
    return-object v0
.end method

.method public final super()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/yo0$this;->this:Z

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/yo0$this;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/yo0$this;->goto:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final this(C)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/yo0$this;->case:Z

    .line 2
    iget-object v0, p0, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final throw(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/do0;->class(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
