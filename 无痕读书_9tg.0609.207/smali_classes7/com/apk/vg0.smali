.class public final Lcom/apk/vg0;
.super Ljava/lang/Object;
.source "MediaType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/vg0$do;
    }
.end annotation


# static fields
.field public static final case:Ljava/util/regex/Pattern;

.field public static final else:Lcom/apk/vg0$do;

.field public static final try:Ljava/util/regex/Pattern;


# instance fields
.field public final do:Ljava/lang/String;

.field public final for:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/vg0;->try:Ljava/util/regex/Pattern;

    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/vg0;->case:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/vg0;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/vg0;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/vg0;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/vg0;->new:[Ljava/lang/String;

    return-void
.end method

.method public static final for(Ljava/lang/String;)Lcom/apk/vg0;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "parse"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/apk/vg0$do;->if(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if(Lcom/apk/vg0;Ljava/nio/charset/Charset;I)Ljava/nio/charset/Charset;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/vg0;->do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 6
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "charset"

    const-string v1, "name"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/apk/vg0;->new:[Ljava/lang/String;

    const-string v2, "$this$indices"

    .line 3
    invoke-static {v1, v2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/apk/xd0;

    const-string v3, "$this$lastIndex"

    .line 5
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    .line 7
    invoke-direct {v2, v3, v1}, Lcom/apk/xd0;-><init>(II)V

    const/4 v1, 0x2

    .line 8
    invoke-static {v2, v1}, Lcom/apk/yd0;->if(Lcom/apk/vd0;I)Lcom/apk/vd0;

    move-result-object v1

    .line 9
    iget v2, v1, Lcom/apk/vd0;->do:I

    .line 10
    iget v3, v1, Lcom/apk/vd0;->if:I

    .line 11
    iget v1, v1, Lcom/apk/vd0;->for:I

    if-ltz v1, :cond_0

    if-gt v2, v3, :cond_2

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/apk/vg0;->new:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/vg0;->new:[Ljava/lang/String;

    add-int/2addr v2, v5

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/apk/vg0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/vg0;

    iget-object p1, p1, Lcom/apk/vg0;->do:Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/vg0;->do:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/vg0;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/vg0;->do:Ljava/lang/String;

    return-object v0
.end method
