.class public Lcom/apk/bn0;
.super Ljava/lang/Object;
.source "HtmlTokenizer.java"


# instance fields
.field public transient break:Lcom/apk/mn0;

.field public transient case:I

.field public transient catch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/km0;",
            ">;"
        }
    .end annotation
.end field

.field public transient class:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public const:Z

.field public do:Ljava/io/BufferedReader;

.field public transient else:Ljava/lang/StringBuffer;

.field public final:Z

.field public transient for:I

.field public transient goto:Z

.field public if:[C

.field public import:Lcom/apk/qm0;

.field public native:Lcom/apk/om0;

.field public transient new:I

.field public super:Ljava/lang/String;

.field public transient this:Lcom/apk/wm0;

.field public throw:Lcom/apk/zm0;

.field public transient try:I

.field public while:Lcom/apk/pm0;


# direct methods
.method public constructor <init>(Lcom/apk/zm0;Ljava/io/Reader;Lcom/apk/om0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 2
    iput-object v0, p0, Lcom/apk/bn0;->if:[C

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/apk/bn0;->new:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/apk/bn0;->try:I

    .line 5
    iput v0, p0, Lcom/apk/bn0;->case:I

    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/bn0;->catch:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/apk/bn0;->class:Ljava/util/Set;

    .line 9
    iput-boolean v0, p0, Lcom/apk/bn0;->const:Z

    .line 10
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    .line 11
    iput-object p1, p0, Lcom/apk/bn0;->throw:Lcom/apk/zm0;

    .line 12
    iget-object p2, p1, Lcom/apk/zm0;->do:Lcom/apk/pm0;

    .line 13
    iput-object p2, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 14
    iget-object p1, p1, Lcom/apk/zm0;->if:Lcom/apk/qm0;

    .line 15
    iput-object p1, p0, Lcom/apk/bn0;->import:Lcom/apk/qm0;

    .line 16
    iput-object p3, p0, Lcom/apk/bn0;->native:Lcom/apk/om0;

    return-void
.end method


# virtual methods
.method public final break()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/bn0;->new:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/apk/bn0;->for:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final case()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    const-string v1, "/*<![CDATA[*/"

    .line 4
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "<![CDATA["

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "//<![CDATA["

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "</"

    .line 5
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<!"

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<?"

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<"

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/apk/bn0;->for:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->const(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_0

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/apk/bn0;->do()Z

    move-result v0

    return v0
.end method

.method public final catch(C)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/bn0;->for:I

    invoke-virtual {p0, v0, p1}, Lcom/apk/bn0;->class(IC)Z

    move-result p1

    return p1
.end method

.method public final class(IC)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/bn0;->new:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    iget-object v0, p0, Lcom/apk/bn0;->if:[C

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final const(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/bn0;->new:I

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/bn0;->if:[C

    aget-char p1, v0, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result p1

    return p1
.end method

.method public final do()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    new-instance v0, Lcom/apk/tm0;

    iget-object v2, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/apk/tm0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->if(Lcom/apk/km0;)V

    .line 3
    iget-object v0, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    :cond_1
    return v1
.end method

.method public final else(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/apk/bn0;->for:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/apk/bn0;->for:I

    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/bn0;->while(I)V

    .line 3
    iget p1, p0, Lcom/apk/bn0;->for:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/apk/bn0;->for:I

    :cond_0
    return-void
.end method

.method public final final(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/bn0;->new:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    if-lt p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/bn0;->if:[C

    aget-char p1, v0, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_5

    const v0, 0xfffd

    if-eq p1, v0, :cond_5

    const/16 v0, 0x22

    if-eq p1, v0, :cond_5

    const-string v0, "\'"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public final for()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/bn0;->native()V

    const/16 v0, 0x3c

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->catch(C)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "/>"

    invoke-virtual {p0, v2}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x27

    .line 4
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->catch(C)Z

    move-result v4

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 6
    invoke-virtual {p0, v6}, Lcom/apk/bn0;->else(I)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->catch(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 9
    invoke-virtual {p0, v6}, Lcom/apk/bn0;->else(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 10
    :goto_0
    iget-object v8, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 11
    iget-boolean v9, v8, Lcom/apk/pm0;->break:Z

    .line 12
    iget-boolean v8, v8, Lcom/apk/pm0;->const:Z

    .line 13
    :goto_1
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v8, :cond_3

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/apk/bn0;->throw()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_4
    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_6

    if-nez v8, :cond_5

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_5
    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/apk/bn0;->throw()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    if-nez v7, :cond_8

    if-nez v4, :cond_8

    .line 16
    invoke-virtual {p0}, Lcom/apk/bn0;->throw()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v10

    if-nez v10, :cond_8

    .line 17
    :cond_7
    iget-object v10, p0, Lcom/apk/bn0;->if:[C

    iget v11, p0, Lcom/apk/bn0;->for:I

    aget-char v10, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 18
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 19
    invoke-virtual {p0, v6}, Lcom/apk/bn0;->else(I)V

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->catch(C)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v7, :cond_9

    .line 21
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 22
    invoke-virtual {p0, v6}, Lcom/apk/bn0;->else(I)V

    goto :goto_2

    .line 23
    :cond_9
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->catch(C)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 25
    invoke-virtual {p0, v6}, Lcom/apk/bn0;->else(I)V

    .line 26
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    .line 28
    throw v0

    :cond_c
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method public final goto(Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/bn0;->const:Z

    .line 2
    iget-object v1, p0, Lcom/apk/bn0;->if:[C

    iget v2, p0, Lcom/apk/bn0;->for:I

    aget-char v1, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->final(I)Z

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/apk/bn0;->const:Z

    return-object v2

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz p1, :cond_2

    .line 7
    iget v5, p0, Lcom/apk/bn0;->for:I

    invoke-virtual {p0, v5}, Lcom/apk/bn0;->final(I)Z

    move-result v5

    if-nez v5, :cond_a

    :cond_2
    if-nez p1, :cond_b

    .line 8
    iget v5, p0, Lcom/apk/bn0;->for:I

    .line 9
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->final(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget v6, p0, Lcom/apk/bn0;->new:I

    if-ltz v6, :cond_4

    if-lt v5, v6, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget-object v6, p0, Lcom/apk/bn0;->if:[C

    aget-char v5, v6, v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_6

    goto :goto_2

    :cond_6
    const/16 v6, 0x20

    if-ne v5, v6, :cond_7

    goto :goto_2

    :cond_7
    if-ne v5, v4, :cond_8

    goto :goto_2

    .line 12
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_b

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 14
    iget-object v5, p0, Lcom/apk/bn0;->if:[C

    iget v6, p0, Lcom/apk/bn0;->for:I

    aget-char v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    goto :goto_1

    .line 16
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_c

    return-object v2

    .line 17
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_e

    .line 19
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v0

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 22
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_d
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 24
    iget-boolean v0, v0, Lcom/apk/pm0;->final:Z

    if-eqz v0, :cond_e

    const-string v0, ":"

    .line 25
    invoke-static {v4, v0, p1}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "xmlns"

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 27
    iget-object v0, p0, Lcom/apk/bn0;->class:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object p1
.end method

.method public final if(Lcom/apk/km0;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/bn0;->try:I

    invoke-interface {p1, v0}, Lcom/apk/km0;->if(I)V

    .line 2
    iget v0, p0, Lcom/apk/bn0;->case:I

    invoke-interface {p1, v0}, Lcom/apk/km0;->do(I)V

    .line 3
    iget-object v0, p0, Lcom/apk/bn0;->catch:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/apk/bn0;->throw:Lcom/apk/zm0;

    iget-object v0, p0, Lcom/apk/bn0;->catch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/bn0;->native:Lcom/apk/om0;

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/zm0;->const(Ljava/util/List;Ljava/util/ListIterator;Lcom/apk/om0;)V

    return-void
.end method

.method public final import()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/bn0;->if:[C

    iget v1, p0, Lcom/apk/bn0;->for:I

    aget-char v0, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->switch(C)V

    .line 4
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public final native()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apk/bn0;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final new()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/apk/bn0;->final:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 3
    iget-boolean v0, v0, Lcom/apk/pm0;->super:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/bn0;->case()Z

    return-void

    :cond_0
    const-string v0, "/*<![CDATA[*/"

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    goto :goto_0

    :cond_1
    const-string v0, "//<![CDATA["

    .line 7
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    .line 8
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    .line 9
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 11
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/apk/bn0;->if:[C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]]>"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "//]]>"

    const-string v5, "/*]]>*/"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_9

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->markSupported()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->mark(I)V

    .line 17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .line 18
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    invoke-virtual {v8}, Ljava/io/BufferedReader;->read()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    const v9, 0x7ffff

    if-ge v3, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    int-to-char v8, v8

    .line 19
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 22
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/16 v9, 0x10

    if-le v8, v9, :cond_5

    const/16 v8, 0x8

    invoke-virtual {v1, v6, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 23
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    goto :goto_3

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_a

    .line 25
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    return-void

    .line 26
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v1

    if-nez v1, :cond_b

    .line 27
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 28
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 29
    invoke-virtual {p0, v4}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 31
    invoke-virtual {p0, v7}, Lcom/apk/bn0;->else(I)V

    goto :goto_5

    .line 32
    :cond_b
    invoke-virtual {p0, v5}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    .line 33
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->else(I)V

    goto :goto_6

    .line 34
    :cond_c
    invoke-virtual {p0, v4}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    .line 35
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->else(I)V

    goto :goto_6

    .line 36
    :cond_d
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->else(I)V

    .line 38
    :goto_6
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 39
    iget-boolean v1, p0, Lcom/apk/bn0;->final:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 40
    iget-boolean v1, v1, Lcom/apk/pm0;->super:Z

    if-nez v1, :cond_f

    .line 41
    :cond_e
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/apk/mm0;

    invoke-direct {v2, v1}, Lcom/apk/mm0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/apk/bn0;->if(Lcom/apk/km0;)V

    .line 43
    :cond_f
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void

    .line 44
    :cond_10
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    return-void
.end method

.method public final public(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->while(I)V

    .line 3
    iget v1, p0, Lcom/apk/bn0;->new:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget v3, p0, Lcom/apk/bn0;->for:I

    add-int/2addr v3, v0

    if-le v3, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/apk/bn0;->if:[C

    iget v5, p0, Lcom/apk/bn0;->for:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final return()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/apk/bn0;->const:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "/>"

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/apk/bn0;->native()V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->goto(Z)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-boolean v4, p0, Lcom/apk/bn0;->const:Z

    if-nez v4, :cond_3

    const/16 v3, 0x3c

    .line 6
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->catch(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 8
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->else(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->catch(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iput-boolean v2, p0, Lcom/apk/bn0;->const:Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/apk/bn0;->native()V

    const/16 v0, 0x3d

    .line 12
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->catch(C)Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 14
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->else(I)V

    .line 15
    invoke-virtual {p0}, Lcom/apk/bn0;->for()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 17
    iget-object v0, v0, Lcom/apk/pm0;->catch:Ljava/lang/String;

    const-string v2, "empty"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, ""

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 20
    iget-object v0, v0, Lcom/apk/pm0;->catch:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, v3

    .line 22
    :goto_1
    iget-boolean v0, p0, Lcom/apk/bn0;->const:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/apk/bn0;->break:Lcom/apk/mn0;

    invoke-virtual {v0, v3, v1}, Lcom/apk/mn0;->new(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final static()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->while(I)V

    .line 2
    iget v1, p0, Lcom/apk/bn0;->for:I

    const/4 v2, 0x2

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-lez v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/apk/bn0;->if:[C

    aget-char v3, v3, v1

    .line 5
    invoke-virtual {p0, v3}, Lcom/apk/bn0;->switch(C)V

    .line 6
    iget-object v5, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    .line 8
    iget v1, p0, Lcom/apk/bn0;->case:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/apk/bn0;->case:I

    .line 9
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->goto(Z)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/apk/bn0;->import:Lcom/apk/qm0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/apk/qm0;->if(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/apk/bn0;->import:Lcom/apk/qm0;

    invoke-virtual {v2, v1}, Lcom/apk/qm0;->do(Ljava/lang/String;)Lcom/apk/nn0;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v3

    :cond_2
    if-eqz v1, :cond_5

    .line 13
    iget-object v2, p0, Lcom/apk/bn0;->throw:Lcom/apk/zm0;

    iget-object v5, p0, Lcom/apk/bn0;->native:Lcom/apk/om0;

    invoke-virtual {v2, v1, v5}, Lcom/apk/zm0;->this(Ljava/lang/String;Lcom/apk/om0;)Lcom/apk/jn0;

    move-result-object v2

    if-nez v2, :cond_3

    .line 14
    iget-object v5, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 15
    iget-boolean v6, v5, Lcom/apk/pm0;->new:Z

    if-nez v6, :cond_3

    .line 16
    iget-boolean v5, v5, Lcom/apk/pm0;->try:Z

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->super(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 18
    iget-boolean v5, v5, Lcom/apk/pm0;->final:Z

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    .line 19
    iget-boolean v2, v2, Lcom/apk/jn0;->final:Z

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 21
    iget-boolean v5, v2, Lcom/apk/pm0;->case:Z

    if-nez v5, :cond_5

    .line 22
    iget-boolean v2, v2, Lcom/apk/pm0;->goto:Z

    if-eqz v2, :cond_5

    .line 23
    :cond_4
    invoke-virtual {p0}, Lcom/apk/bn0;->case()Z

    return-void

    .line 24
    :cond_5
    new-instance v2, Lcom/apk/xm0;

    invoke-direct {v2, v1}, Lcom/apk/xm0;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/apk/bn0;->break:Lcom/apk/mn0;

    .line 25
    iget-boolean v2, p0, Lcom/apk/bn0;->const:Z

    if-eqz v2, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/apk/bn0;->native()V

    .line 27
    invoke-virtual {p0}, Lcom/apk/bn0;->return()V

    if-eqz v1, :cond_6

    .line 28
    iget-object v2, p0, Lcom/apk/bn0;->break:Lcom/apk/mn0;

    invoke-virtual {p0, v2}, Lcom/apk/bn0;->if(Lcom/apk/km0;)V

    :cond_6
    const/16 v2, 0x3e

    .line 29
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->catch(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 30
    invoke-virtual {p0, v4}, Lcom/apk/bn0;->else(I)V

    .line 31
    :cond_7
    iget-object v2, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 32
    iget-object v2, v2, Lcom/apk/pm0;->if:Ljava/util/List;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    .line 34
    iput-boolean v0, p0, Lcom/apk/bn0;->final:Z

    .line 35
    iput-object v1, p0, Lcom/apk/bn0;->super:Ljava/lang/String;

    :cond_9
    if-eqz v1, :cond_a

    const-string v0, "html"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {p0}, Lcom/apk/bn0;->native()V

    .line 38
    :cond_a
    iput-object v3, p0, Lcom/apk/bn0;->break:Lcom/apk/mn0;

    goto :goto_2

    .line 39
    :cond_b
    invoke-virtual {p0}, Lcom/apk/bn0;->do()Z

    :goto_2
    return-void
.end method

.method public final super(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "html"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final switch(C)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 1
    iget p1, p0, Lcom/apk/bn0;->try:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/bn0;->try:I

    .line 2
    iput v0, p0, Lcom/apk/bn0;->case:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/apk/bn0;->case:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/apk/bn0;->case:I

    :goto_0
    return-void
.end method

.method public final this(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    .line 3
    iget-object v0, p0, Lcom/apk/bn0;->if:[C

    iget v1, p0, Lcom/apk/bn0;->for:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->switch(C)V

    .line 4
    iget v0, p0, Lcom/apk/bn0;->for:I

    invoke-virtual {p0, v0, p1}, Lcom/apk/bn0;->class(IC)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final throw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/bn0;->for:I

    .line 2
    iget v1, p0, Lcom/apk/bn0;->new:I

    if-ltz v1, :cond_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/bn0;->if:[C

    aget-char v0, v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final try()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/apk/bn0;->break()Z

    move-result v0

    const-string v1, "-->"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/apk/bn0;->import()V

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/bn0;->else(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/apk/bn0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lcom/apk/bn0;->else(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/apk/bn0;->while:Lcom/apk/pm0;

    .line 9
    iget-boolean v1, v0, Lcom/apk/pm0;->else:Z

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 10
    iget-object v0, v0, Lcom/apk/pm0;->import:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2d

    if-lez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_2

    .line 13
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    sub-int/2addr v4, v2

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_3
    new-instance v0, Lcom/apk/sm0;

    invoke-direct {v0, v1}, Lcom/apk/sm0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/apk/bn0;->if(Lcom/apk/km0;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/apk/bn0;->else:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_5
    return-void
.end method

.method public final while(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/apk/bn0;->new:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/apk/bn0;->for:I

    add-int/2addr p1, v0

    const/16 v1, 0x400

    if-lt p1, v1, :cond_7

    rsub-int p1, v0, 0x400

    .line 2
    iget-object v2, p0, Lcom/apk/bn0;->if:[C

    const/4 v3, 0x0

    invoke-static {v2, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iput v3, p0, Lcom/apk/bn0;->for:I

    rsub-int v0, p1, 0x400

    move v2, p1

    const/4 v4, 0x0

    .line 4
    :cond_0
    iget-object v5, p0, Lcom/apk/bn0;->do:Ljava/io/BufferedReader;

    iget-object v6, p0, Lcom/apk/bn0;->if:[C

    invoke-virtual {v5, v6, v2, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/2addr v4, v5

    add-int/2addr v2, v5

    sub-int/2addr v0, v5

    :cond_1
    if-ltz v5, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    if-lez v0, :cond_3

    add-int/2addr v4, p1

    .line 5
    iput v4, p0, Lcom/apk/bn0;->new:I

    .line 6
    :cond_3
    :goto_0
    iget p1, p0, Lcom/apk/bn0;->new:I

    if-ltz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0x400

    :goto_1
    if-ge v3, p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/apk/bn0;->if:[C

    aget-char v0, p1, v3

    const/4 v2, 0x1

    if-lt v0, v2, :cond_5

    const/16 v2, 0x20

    if-gt v0, v2, :cond_5

    const/16 v4, 0xa

    if-eq v0, v4, :cond_5

    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    .line 8
    aput-char v2, p1, v3

    :cond_5
    if-nez v0, :cond_6

    .line 9
    iget-object p1, p0, Lcom/apk/bn0;->if:[C

    const v0, 0xfffd

    aput-char v0, p1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
