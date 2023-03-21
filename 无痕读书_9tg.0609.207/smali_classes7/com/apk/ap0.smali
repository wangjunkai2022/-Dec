.class public final Lcom/apk/ap0;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field public static final native:[C

.field public static final public:[I


# instance fields
.field public break:Lcom/apk/yo0$goto;

.field public case:Ljava/lang/String;

.field public catch:Lcom/apk/yo0$else;

.field public class:Lcom/apk/yo0$for;

.field public const:Lcom/apk/yo0$try;

.field public final do:Lcom/apk/qo0;

.field public else:Ljava/lang/StringBuilder;

.field public final:Lcom/apk/yo0$new;

.field public for:Lcom/apk/bp0;

.field public goto:Ljava/lang/StringBuilder;

.field public final if:Lcom/apk/uo0;

.field public final import:[I

.field public new:Lcom/apk/yo0;

.field public super:Ljava/lang/String;

.field public this:Lcom/apk/yo0$this;

.field public throw:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public try:Z

.field public final while:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/apk/ap0;->native:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_1

    sput-object v1, Lcom/apk/ap0;->public:[I

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lcom/apk/qo0;Lcom/apk/uo0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    iput-object v0, p0, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/ap0;->try:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Lcom/apk/yo0$goto;

    invoke-direct {v0}, Lcom/apk/yo0$goto;-><init>()V

    iput-object v0, p0, Lcom/apk/ap0;->break:Lcom/apk/yo0$goto;

    .line 8
    new-instance v0, Lcom/apk/yo0$else;

    invoke-direct {v0}, Lcom/apk/yo0$else;-><init>()V

    iput-object v0, p0, Lcom/apk/ap0;->catch:Lcom/apk/yo0$else;

    .line 9
    new-instance v0, Lcom/apk/yo0$for;

    invoke-direct {v0}, Lcom/apk/yo0$for;-><init>()V

    iput-object v0, p0, Lcom/apk/ap0;->class:Lcom/apk/yo0$for;

    .line 10
    new-instance v0, Lcom/apk/yo0$try;

    invoke-direct {v0}, Lcom/apk/yo0$try;-><init>()V

    iput-object v0, p0, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    .line 11
    new-instance v0, Lcom/apk/yo0$new;

    invoke-direct {v0}, Lcom/apk/yo0$new;-><init>()V

    iput-object v0, p0, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lcom/apk/ap0;->while:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lcom/apk/ap0;->import:[I

    .line 14
    iput-object p1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 15
    iput-object p2, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    return-void
.end method


# virtual methods
.method public break(Lcom/apk/bp0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    invoke-virtual {v0}, Lcom/apk/uo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    new-instance v1, Lcom/apk/to0;

    iget-object v2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/apk/to0;-><init>(Lcom/apk/qo0;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public case(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public catch(Lcom/apk/bp0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    invoke-virtual {v0}, Lcom/apk/uo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    new-instance v1, Lcom/apk/to0;

    iget-object v2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/apk/qo0;->const()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/apk/to0;-><init>(Lcom/apk/qo0;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public class()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->super:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v0}, Lcom/apk/yo0$this;->import()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ap0;->super:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final varargs do(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    invoke-virtual {v0}, Lcom/apk/uo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    new-instance v1, Lcom/apk/to0;

    iget-object v2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid character reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/apk/to0;-><init>(Lcom/apk/qo0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public else(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {v0}, Lcom/apk/yo0$new;->else()Lcom/apk/yo0;

    .line 2
    iget-object v0, p0, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apk/yo0$new;->new:Z

    return-void
.end method

.method public goto(Lcom/apk/yo0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/apk/ap0;->try:Z

    invoke-static {v0}, Lcom/apk/sb0;->extends(Z)V

    .line 2
    iput-object p1, p0, Lcom/apk/ap0;->new:Lcom/apk/yo0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/apk/ap0;->try:Z

    .line 4
    iget-object v1, p1, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v2, Lcom/apk/yo0$break;->if:Lcom/apk/yo0$break;

    if-ne v1, v2, :cond_0

    .line 5
    check-cast p1, Lcom/apk/yo0$goto;

    .line 6
    iget-object p1, p1, Lcom/apk/yo0$this;->if:Ljava/lang/String;

    iput-object p1, p0, Lcom/apk/ap0;->super:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/apk/ap0;->throw:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/apk/yo0$break;->for:Lcom/apk/yo0$break;

    if-ne v1, v2, :cond_1

    .line 9
    check-cast p1, Lcom/apk/yo0$else;

    .line 10
    invoke-virtual {p1}, Lcom/apk/yo0$this;->while()Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    iget-object p1, p1, Lcom/apk/yo0$this;->for:Ljava/lang/String;

    aput-object p1, v0, v1

    .line 12
    iget-object p1, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    invoke-virtual {p1}, Lcom/apk/uo0;->do()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/apk/ap0;->if:Lcom/apk/uo0;

    new-instance v1, Lcom/apk/to0;

    iget-object v2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const-string v3, "Attributes incorrectly present on end tag [/%s]"

    invoke-direct {v1, v2, v3, v0}, Lcom/apk/to0;-><init>(Lcom/apk/qo0;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public if(Ljava/lang/Character;Z)[I
    .locals 13
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->super()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->const()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    sget-object v0, Lcom/apk/ap0;->native:[C

    .line 4
    invoke-virtual {p1}, Lcom/apk/qo0;->if()V

    .line 5
    invoke-virtual {p1}, Lcom/apk/qo0;->super()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/apk/qo0;->do:[C

    iget p1, p1, Lcom/apk/qo0;->try:I

    aget-char p1, v2, p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object v1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/apk/ap0;->while:[I

    .line 7
    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 8
    iget v2, v0, Lcom/apk/qo0;->for:I

    iget v5, v0, Lcom/apk/qo0;->try:I

    sub-int/2addr v2, v5

    const/16 v5, 0x400

    if-ge v2, v5, :cond_4

    .line 9
    iput v4, v0, Lcom/apk/qo0;->new:I

    .line 10
    :cond_4
    invoke-virtual {v0}, Lcom/apk/qo0;->if()V

    .line 11
    iget v2, v0, Lcom/apk/qo0;->try:I

    iput v2, v0, Lcom/apk/qo0;->else:I

    .line 12
    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ";"

    const/16 v5, 0x61

    const/16 v6, 0x41

    const/16 v7, 0x39

    const/16 v8, 0x30

    const/4 v9, -0x1

    if-eqz v0, :cond_12

    .line 13
    iget-object p2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lcom/apk/qo0;->public(Ljava/lang/String;)Z

    move-result p2

    .line 14
    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    if-eqz p2, :cond_9

    .line 15
    invoke-virtual {v0}, Lcom/apk/qo0;->if()V

    .line 16
    iget v10, v0, Lcom/apk/qo0;->try:I

    .line 17
    :goto_1
    iget v11, v0, Lcom/apk/qo0;->try:I

    iget v12, v0, Lcom/apk/qo0;->for:I

    if-ge v11, v12, :cond_8

    .line 18
    iget-object v12, v0, Lcom/apk/qo0;->do:[C

    aget-char v11, v12, v11

    if-lt v11, v8, :cond_5

    if-le v11, v7, :cond_7

    :cond_5
    if-lt v11, v6, :cond_6

    const/16 v12, 0x46

    if-le v11, v12, :cond_7

    :cond_6
    if-lt v11, v5, :cond_8

    const/16 v12, 0x66

    if-gt v11, v12, :cond_8

    .line 19
    :cond_7
    iget v11, v0, Lcom/apk/qo0;->try:I

    add-int/2addr v11, v3

    iput v11, v0, Lcom/apk/qo0;->try:I

    goto :goto_1

    .line 20
    :cond_8
    iget-object v5, v0, Lcom/apk/qo0;->do:[C

    iget-object v6, v0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v0, v0, Lcom/apk/qo0;->try:I

    sub-int/2addr v0, v10

    invoke-static {v5, v6, v10, v0}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_9
    invoke-virtual {v0}, Lcom/apk/qo0;->if()V

    .line 22
    iget v5, v0, Lcom/apk/qo0;->try:I

    .line 23
    :goto_2
    iget v6, v0, Lcom/apk/qo0;->try:I

    iget v10, v0, Lcom/apk/qo0;->for:I

    if-ge v6, v10, :cond_a

    .line 24
    iget-object v10, v0, Lcom/apk/qo0;->do:[C

    aget-char v10, v10, v6

    if-lt v10, v8, :cond_a

    if-gt v10, v7, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 25
    iput v6, v0, Lcom/apk/qo0;->try:I

    goto :goto_2

    .line 26
    :cond_a
    iget-object v6, v0, Lcom/apk/qo0;->do:[C

    iget-object v7, v0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v0, v0, Lcom/apk/qo0;->try:I

    sub-int/2addr v0, v5

    invoke-static {v6, v7, v5, v0}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_b

    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "numeric reference with no numerals"

    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {p1}, Lcom/apk/qo0;->finally()V

    return-object v1

    .line 30
    :cond_b
    iget-object v1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 31
    iput v9, v1, Lcom/apk/qo0;->else:I

    .line 32
    invoke-virtual {v1, v2}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v2, "missing semicolon on [&#%s]"

    .line 33
    invoke-virtual {p0, v2, v1}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz p2, :cond_d

    const/16 p2, 0x10

    goto :goto_4

    :cond_d
    const/16 p2, 0xa

    .line 34
    :goto_4
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 p2, -0x1

    :goto_5
    if-eq p2, v9, :cond_11

    const v0, 0xd800

    if-lt p2, v0, :cond_e

    const v0, 0xdfff

    if-le p2, v0, :cond_11

    :cond_e
    const v0, 0x10ffff

    if-le p2, v0, :cond_f

    goto :goto_6

    :cond_f
    const/16 v0, 0x80

    if-lt p2, v0, :cond_10

    .line 35
    sget-object v1, Lcom/apk/ap0;->public:[I

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_10

    new-array v0, v3, [Ljava/lang/Object;

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "character [%s] is not a valid unicode code point"

    invoke-virtual {p0, v1, v0}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/apk/ap0;->public:[I

    add-int/lit8 p2, p2, -0x80

    aget p2, v0, p2

    .line 38
    :cond_10
    aput p2, p1, v4

    goto :goto_7

    :cond_11
    :goto_6
    new-array v0, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "character [%s] outside of valid range"

    invoke-virtual {p0, p2, v0}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0xfffd

    .line 40
    aput p2, p1, v4

    :goto_7
    return-object p1

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 42
    invoke-virtual {v0}, Lcom/apk/qo0;->if()V

    .line 43
    iget v10, v0, Lcom/apk/qo0;->try:I

    .line 44
    :goto_8
    iget v11, v0, Lcom/apk/qo0;->try:I

    iget v12, v0, Lcom/apk/qo0;->for:I

    if-ge v11, v12, :cond_16

    .line 45
    iget-object v12, v0, Lcom/apk/qo0;->do:[C

    aget-char v11, v12, v11

    if-lt v11, v6, :cond_13

    const/16 v12, 0x5a

    if-le v11, v12, :cond_15

    :cond_13
    if-lt v11, v5, :cond_14

    const/16 v12, 0x7a

    if-le v11, v12, :cond_15

    .line 46
    :cond_14
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 47
    :cond_15
    iget v11, v0, Lcom/apk/qo0;->try:I

    add-int/2addr v11, v3

    iput v11, v0, Lcom/apk/qo0;->try:I

    goto :goto_8

    .line 48
    :cond_16
    :goto_9
    invoke-virtual {v0}, Lcom/apk/qo0;->throw()Z

    move-result v5

    if-nez v5, :cond_17

    .line 49
    iget-object v5, v0, Lcom/apk/qo0;->do:[C

    iget v6, v0, Lcom/apk/qo0;->try:I

    aget-char v5, v5, v6

    if-lt v5, v8, :cond_17

    if-gt v5, v7, :cond_17

    add-int/lit8 v6, v6, 0x1

    .line 50
    iput v6, v0, Lcom/apk/qo0;->try:I

    goto :goto_9

    .line 51
    :cond_17
    iget-object v5, v0, Lcom/apk/qo0;->do:[C

    iget-object v6, v0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v0, v0, Lcom/apk/qo0;->try:I

    sub-int/2addr v0, v10

    invoke-static {v5, v6, v10, v0}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v5, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/apk/qo0;->return(C)Z

    move-result v5

    .line 53
    invoke-static {v0}, Lcom/apk/ko0;->new(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 54
    sget-object v6, Lcom/apk/ko0$if;->else:Lcom/apk/ko0$if;

    invoke-virtual {v6, v0}, Lcom/apk/ko0$if;->do(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_18

    const/4 v6, 0x1

    goto :goto_a

    :cond_18
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_19

    if-eqz v5, :cond_19

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    goto :goto_c

    :cond_1a
    :goto_b
    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_1c

    .line 55
    iget-object p1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {p1}, Lcom/apk/qo0;->finally()V

    if-eqz v5, :cond_1b

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    const-string p2, "invalid named reference [%s]"

    .line 56
    invoke-virtual {p0, p2, p1}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-object v1

    :cond_1c
    if-eqz p2, :cond_20

    .line 57
    iget-object p2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {p2}, Lcom/apk/qo0;->throws()Z

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 58
    invoke-virtual {p2}, Lcom/apk/qo0;->super()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_d

    .line 59
    :cond_1d
    iget-object v5, p2, Lcom/apk/qo0;->do:[C

    iget p2, p2, Lcom/apk/qo0;->try:I

    aget-char p2, v5, p2

    if-lt p2, v8, :cond_1e

    if-gt p2, v7, :cond_1e

    const/4 p2, 0x1

    goto :goto_e

    :cond_1e
    :goto_d
    const/4 p2, 0x0

    :goto_e
    if-nez p2, :cond_1f

    .line 60
    iget-object p2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {p2, v5}, Lcom/apk/qo0;->static([C)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 61
    :cond_1f
    iget-object p1, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {p1}, Lcom/apk/qo0;->finally()V

    return-object v1

    .line 62
    :cond_20
    iget-object p2, p0, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    .line 63
    iput v9, p2, Lcom/apk/qo0;->else:I

    .line 64
    invoke-virtual {p2, v2}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_21

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v1, "missing semicolon on [&%s]"

    .line 65
    invoke-virtual {p0, v1, p2}, Lcom/apk/ap0;->do(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_21
    iget-object p2, p0, Lcom/apk/ap0;->import:[I

    .line 67
    sget-object v1, Lcom/apk/ko0;->if:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_22

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    aput v5, p2, v4

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    aput v1, p2, v3

    const/4 p2, 0x2

    goto :goto_f

    .line 70
    :cond_22
    sget-object v1, Lcom/apk/ko0$if;->else:Lcom/apk/ko0$if;

    invoke-virtual {v1, v0}, Lcom/apk/ko0$if;->do(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_23

    .line 71
    aput v1, p2, v4

    const/4 p2, 0x1

    goto :goto_f

    :cond_23
    const/4 p2, 0x0

    :goto_f
    if-ne p2, v3, :cond_24

    .line 72
    iget-object p2, p0, Lcom/apk/ap0;->import:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_24
    if-ne p2, v2, :cond_25

    .line 73
    iget-object p1, p0, Lcom/apk/ap0;->import:[I

    return-object p1

    :cond_25
    const-string p1, "Unexpected characters returned for "

    .line 74
    invoke-static {p1, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public new(Z)Lcom/apk/yo0$this;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/ap0;->break:Lcom/apk/yo0$goto;

    invoke-virtual {p1}, Lcom/apk/yo0$goto;->return()Lcom/apk/yo0$this;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apk/ap0;->catch:Lcom/apk/yo0$else;

    invoke-virtual {p1}, Lcom/apk/yo0$this;->return()Lcom/apk/yo0$this;

    :goto_0
    iput-object p1, p0, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    return-object p1
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    .line 2
    iget-boolean v1, v0, Lcom/apk/yo0$this;->case:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/yo0$this;->public()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p0, v0}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    return-void
.end method

.method public try(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ap0;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/ap0;->else:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method
