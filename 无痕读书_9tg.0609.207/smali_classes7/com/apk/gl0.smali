.class public final Lcom/apk/gl0;
.super Ljava/lang/Object;
.source "Segment.kt"


# instance fields
.field public case:Lcom/apk/gl0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final do:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public else:Lcom/apk/gl0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public for:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public if:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public new:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public try:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/apk/gl0;->do:[B

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/gl0;->try:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/gl0;->new:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/gl0;->do:[B

    .line 5
    iput p2, p0, Lcom/apk/gl0;->if:I

    .line 6
    iput p3, p0, Lcom/apk/gl0;->for:I

    .line 7
    iput-boolean p4, p0, Lcom/apk/gl0;->new:Z

    .line 8
    iput-boolean p5, p0, Lcom/apk/gl0;->try:Z

    return-void
.end method


# virtual methods
.method public final do()Lcom/apk/gl0;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    iput-object v3, v2, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    .line 3
    iget-object v2, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    invoke-static {v2}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    iput-object v3, v2, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    .line 4
    iput-object v1, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    .line 5
    iput-object v1, p0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    return-object v0
.end method

.method public final for()Lcom/apk/gl0;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/gl0;->new:Z

    .line 2
    new-instance v0, Lcom/apk/gl0;

    iget-object v2, p0, Lcom/apk/gl0;->do:[B

    iget v3, p0, Lcom/apk/gl0;->if:I

    iget v4, p0, Lcom/apk/gl0;->for:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/apk/gl0;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final if(Lcom/apk/gl0;)Lcom/apk/gl0;
    .locals 1
    .param p1    # Lcom/apk/gl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "segment"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p0, p1, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    .line 2
    iget-object v0, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    iput-object v0, p1, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    .line 3
    iget-object v0, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/apk/gl0;->else:Lcom/apk/gl0;

    .line 4
    iput-object p1, p0, Lcom/apk/gl0;->case:Lcom/apk/gl0;

    return-object p1
.end method

.method public final new(Lcom/apk/gl0;I)V
    .locals 7
    .param p1    # Lcom/apk/gl0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p1, Lcom/apk/gl0;->try:Z

    if-eqz v0, :cond_3

    .line 2
    iget v5, p1, Lcom/apk/gl0;->for:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 3
    iget-boolean v0, p1, Lcom/apk/gl0;->new:Z

    if-nez v0, :cond_1

    add-int v0, v5, p2

    .line 4
    iget v4, p1, Lcom/apk/gl0;->if:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v2, p1, Lcom/apk/gl0;->do:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v1, v2

    invoke-static/range {v1 .. v6}, Lcom/apk/uc0;->for([B[BIIII)[B

    .line 6
    iget v0, p1, Lcom/apk/gl0;->for:I

    iget v1, p1, Lcom/apk/gl0;->if:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/apk/gl0;->for:I

    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/apk/gl0;->if:I

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apk/gl0;->do:[B

    iget-object v1, p1, Lcom/apk/gl0;->do:[B

    iget v2, p1, Lcom/apk/gl0;->for:I

    iget v3, p0, Lcom/apk/gl0;->if:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/uc0;->if([B[BIII)[B

    .line 11
    iget v0, p1, Lcom/apk/gl0;->for:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/apk/gl0;->for:I

    .line 12
    iget p1, p0, Lcom/apk/gl0;->if:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/apk/gl0;->if:I

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
