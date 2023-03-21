.class public final Lcom/apk/qo0;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:Z

.field public class:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public const:I

.field public do:[C

.field public else:I

.field public for:I

.field public goto:[Ljava/lang/String;

.field public if:Ljava/io/Reader;

.field public new:I

.field public this:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public try:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/qo0;->else:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/apk/qo0;->break:I

    .line 6
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/apk/sb0;->package(Z)V

    .line 8
    iput-object p1, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    const p1, 0x8000

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/apk/qo0;->do:[C

    .line 10
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    return-void
.end method

.method public static for([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    add-int v4, p2, v2

    .line 2
    aget-char v4, p0, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v2, v3, 0x1ff

    .line 3
    aget-object v3, p1, v2

    if-eqz v3, :cond_6

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p3, v4, :cond_4

    move v5, p2

    move v4, p3

    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-eqz v4, :cond_5

    add-int/lit8 v4, v5, 0x1

    .line 5
    aget-char v5, p0, v5

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    move v4, v7

    move v6, v8

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    :cond_5
    if-eqz v0, :cond_6

    return-object v3

    .line 6
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 7
    aput-object v0, p1, v2

    return-object v0
.end method


# virtual methods
.method public varargs break([C)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/qo0;->try:I

    .line 3
    iget v1, p0, Lcom/apk/qo0;->for:I

    .line 4
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    .line 5
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 6
    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_2
    iput v4, p0, Lcom/apk/qo0;->try:I

    if-le v4, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/apk/qo0;->do:[C

    iget-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, ""

    :goto_3
    return-object p1
.end method

.method public case(Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/qo0;->try:I

    .line 2
    iget v1, p0, Lcom/apk/qo0;->for:I

    .line 3
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    :goto_2
    iput v3, p0, Lcom/apk/qo0;->try:I

    if-le v3, v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/apk/qo0;->do:[C

    iget-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    const-string p1, ""

    :goto_3
    return-object p1
.end method

.method public varargs catch([C)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/qo0;->try:I

    .line 3
    iget v1, p0, Lcom/apk/qo0;->for:I

    .line 4
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5
    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iput v3, p0, Lcom/apk/qo0;->try:I

    if-le v3, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/apk/qo0;->do:[C

    iget-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public class()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v2, p0, Lcom/apk/qo0;->try:I

    iget v3, p0, Lcom/apk/qo0;->for:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/apk/qo0;->for:I

    iput v1, p0, Lcom/apk/qo0;->try:I

    return-object v0
.end method

.method public const()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/qo0;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v1, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method public default(Ljava/lang/CharSequence;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3
    iget v1, p0, Lcom/apk/qo0;->try:I

    :goto_0
    iget v2, p0, Lcom/apk/qo0;->for:I

    if-ge v1, v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    .line 5
    iget v2, p0, Lcom/apk/qo0;->for:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 7
    iget v5, p0, Lcom/apk/qo0;->for:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    .line 8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/apk/qo0;->do:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    .line 9
    iget p1, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public do()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/qo0;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apk/qo0;->try:I

    return-void
.end method

.method public else()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/qo0;->try:I

    .line 2
    iget v1, p0, Lcom/apk/qo0;->for:I

    .line 3
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_0

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v3, p0, Lcom/apk/qo0;->try:I

    if-le v3, v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/apk/qo0;->do:[C

    iget-object v2, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public extends()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/qo0;->case:I

    iget v1, p0, Lcom/apk/qo0;->try:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/qo0;->while()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/qo0;->import()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    iget v1, p0, Lcom/apk/qo0;->break:I

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    .line 5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/apk/qo0;->break:I

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    goto :goto_0

    .line 6
    :cond_2
    iget v4, p0, Lcom/apk/qo0;->break:I

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/apk/qo0;->while()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/apk/qo0;->extends()I

    move-result v1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/apk/qo0;->import()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/apk/qo0;->extends()I

    move-result v1

    :goto_1
    add-int/2addr v1, v3

    goto :goto_2

    :cond_4
    if-gez v1, :cond_5

    .line 12
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/apk/qo0;->extends()I

    move-result v2

    iget-object v4, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 14
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finally()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/qo0;->else:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iput v0, p0, Lcom/apk/qo0;->try:I

    .line 3
    iput v1, p0, Lcom/apk/qo0;->else:I

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/apk/yn0;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apk/yn0;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public goto()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/qo0;->try:I

    .line 3
    :goto_0
    iget v1, p0, Lcom/apk/qo0;->try:I

    iget v2, p0, Lcom/apk/qo0;->for:I

    if-ge v1, v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/apk/qo0;->do:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    :cond_2
    iget v1, p0, Lcom/apk/qo0;->try:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/qo0;->try:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/apk/qo0;->do:[C

    iget-object v2, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v3, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final if()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/apk/qo0;->catch:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/apk/qo0;->try:I

    iget v1, p0, Lcom/apk/qo0;->new:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v1, p0, Lcom/apk/qo0;->else:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    .line 4
    iget-object v4, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_1
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_4

    .line 5
    iget-object v9, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    iget-object v11, p0, Lcom/apk/qo0;->do:[C

    iget-object v12, p0, Lcom/apk/qo0;->do:[C

    array-length v12, v12

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_2

    .line 6
    iput-boolean v10, p0, Lcom/apk/qo0;->catch:Z

    :cond_2
    if-gtz v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v4, v9

    goto :goto_1

    .line 7
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_7

    cmp-long v9, v7, v5

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 8
    :goto_3
    invoke-static {v10}, Lcom/apk/sb0;->package(Z)V

    .line 9
    iput v4, p0, Lcom/apk/qo0;->for:I

    .line 10
    iget v4, p0, Lcom/apk/qo0;->case:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/apk/qo0;->case:I

    .line 11
    iput v1, p0, Lcom/apk/qo0;->try:I

    .line 12
    iget v0, p0, Lcom/apk/qo0;->else:I

    if-eq v0, v2, :cond_6

    .line 13
    iput v3, p0, Lcom/apk/qo0;->else:I

    .line 14
    :cond_6
    iget v0, p0, Lcom/apk/qo0;->for:I

    const/16 v1, 0x6000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/apk/qo0;->new:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/apk/qo0;->package()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/apk/qo0;->class:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/apk/yn0;

    invoke-direct {v1, v0}, Lcom/apk/yn0;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_8
    :goto_4
    return-void
.end method

.method public final import()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->while()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/apk/qo0;->extends()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/apk/qo0;->for:I

    iget v2, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/apk/qo0;->do:[C

    iget v6, p0, Lcom/apk/qo0;->try:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lcom/apk/qo0;->try:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/qo0;->try:I

    return v3

    :cond_3
    return v2
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iput-object v1, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    .line 4
    iput-object v1, p0, Lcom/apk/qo0;->do:[C

    .line 5
    iput-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    .line 6
    throw v0

    .line 7
    :catch_0
    :goto_0
    iput-object v1, p0, Lcom/apk/qo0;->if:Ljava/io/Reader;

    .line 8
    iput-object v1, p0, Lcom/apk/qo0;->do:[C

    .line 9
    iput-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    return-void
.end method

.method public final package()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->while()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/apk/qo0;->break:I

    iget-object v1, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/apk/qo0;->break:I

    .line 3
    iget-object v0, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eq v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p0, Lcom/apk/qo0;->break:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/apk/qo0;->break:I

    .line 7
    :cond_2
    iget v0, p0, Lcom/apk/qo0;->try:I

    :goto_1
    iget v1, p0, Lcom/apk/qo0;->for:I

    if-ge v0, v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/apk/qo0;->do:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    iget v2, p0, Lcom/apk/qo0;->case:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public private()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/qo0;->try:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/apk/qo0;->try:I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/apk/yn0;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/apk/yn0;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public public(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/apk/qo0;->for:I

    iget v2, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/apk/qo0;->do:[C

    iget v6, p0, Lcom/apk/qo0;->try:I

    add-int/2addr v6, v1

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_1

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lcom/apk/qo0;->try:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/qo0;->try:I

    return v3

    :cond_3
    return v2
.end method

.method public return(C)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->super()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v1, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs static([C)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->super()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 3
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v2, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v2

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public super()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/qo0;->try:I

    iget v1, p0, Lcom/apk/qo0;->for:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public switch()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->super()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v2, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public this(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/qo0;->try:I

    :goto_0
    iget v1, p0, Lcom/apk/qo0;->for:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/apk/qo0;->do:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 4
    iget p1, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/apk/qo0;->do:[C

    iget-object v1, p0, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v2, p0, Lcom/apk/qo0;->try:I

    invoke-static {p1, v1, v2, v0}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget v1, p0, Lcom/apk/qo0;->try:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/apk/qo0;->try:I

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/apk/qo0;->class()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final throw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/qo0;->try:I

    iget v1, p0, Lcom/apk/qo0;->for:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public throws()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->super()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v2, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 3
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/apk/qo0;->for:I

    iget v1, p0, Lcom/apk/qo0;->try:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/qo0;->do:[C

    iget v2, p0, Lcom/apk/qo0;->try:I

    iget v3, p0, Lcom/apk/qo0;->for:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public try()C
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/qo0;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/qo0;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/qo0;->do:[C

    iget v1, p0, Lcom/apk/qo0;->try:I

    aget-char v0, v0, v1

    .line 3
    :goto_0
    iget v1, p0, Lcom/apk/qo0;->try:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/qo0;->try:I

    return v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/qo0;->this:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
