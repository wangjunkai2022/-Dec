.class public final Lcom/apk/ig0;
.super Ljava/lang/Object;
.source "Cookie.kt"


# static fields
.field public static final break:Ljava/util/regex/Pattern;

.field public static final catch:Ljava/util/regex/Pattern;

.field public static final class:Ljava/util/regex/Pattern;

.field public static final const:Ljava/util/regex/Pattern;

.field public static final final:Lcom/apk/ig0;


# instance fields
.field public final case:Z

.field public final do:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final else:Z

.field public final for:J

.field public final goto:Z

.field public final if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final this:Z

.field public final try:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ig0;->break:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ig0;->catch:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ig0;->class:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/apk/ig0;->const:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ig0;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/ig0;->if:Ljava/lang/String;

    iput-wide p3, p0, Lcom/apk/ig0;->for:J

    iput-object p5, p0, Lcom/apk/ig0;->new:Ljava/lang/String;

    iput-object p6, p0, Lcom/apk/ig0;->try:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/apk/ig0;->case:Z

    iput-boolean p8, p0, Lcom/apk/ig0;->else:Z

    iput-boolean p9, p0, Lcom/apk/ig0;->goto:Z

    iput-boolean p10, p0, Lcom/apk/ig0;->this:Z

    return-void
.end method

.method public static final do(Ljava/lang/String;IIZ)I
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_7

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_0
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_5

    const/16 v1, 0x39

    const/16 v2, 0x30

    if-gt v2, v0, :cond_1

    if-ge v1, v0, :cond_5

    :cond_1
    const/16 v1, 0x7a

    const/16 v2, 0x61

    if-gt v2, v0, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    const/16 v1, 0x5a

    const/16 v2, 0x41

    if-gt v2, v0, :cond_3

    if-ge v1, v0, :cond_5

    :cond_3
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_6

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return p2
.end method

.method public static final for(Ljava/lang/String;)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "-?\\d+"

    const-string v4, "pattern"

    .line 2
    invoke-static {v3, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "Pattern.compile(pattern)"

    invoke-static {v3, v4}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nativePattern"

    .line 4
    invoke-static {v3, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "input"

    .line 5
    invoke-static {p0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "-"

    .line 7
    invoke-static {p0, v4, v2, v3}, Lcom/apk/ie0;->static(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0

    .line 8
    :cond_2
    throw v2
.end method

.method public static final if(Ljava/lang/String;II)J
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/apk/ig0;->do(Ljava/lang/String;IIZ)I

    move-result p1

    .line 2
    sget-object v0, Lcom/apk/ig0;->const:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge p1, p2, :cond_4

    add-int/lit8 v10, p1, 0x1

    .line 4
    invoke-static {p0, v10, p2, v9}, Lcom/apk/ig0;->do(Ljava/lang/String;IIZ)I

    move-result v10

    .line 5
    invoke-virtual {v0, p1, v10}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const-string p1, "matcher.group(1)"

    if-ne v3, v1, :cond_0

    .line 6
    sget-object v11, Lcom/apk/ig0;->const:Ljava/util/regex/Pattern;

    .line 7
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 8
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "matcher.group(2)"

    invoke-static {v3, v6}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x3

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "matcher.group(3)"

    invoke-static {v6, v7}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    move v6, v3

    move v3, p1

    goto/16 :goto_1

    :cond_0
    if-ne v4, v1, :cond_1

    .line 11
    sget-object v8, Lcom/apk/ig0;->class:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v4, p1

    goto :goto_1

    :cond_1
    if-ne v5, v1, :cond_2

    .line 14
    sget-object v8, Lcom/apk/ig0;->catch:Ljava/util/regex/Pattern;

    .line 15
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {p1, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v5}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v5, Lcom/apk/ig0;->catch:Ljava/util/regex/Pattern;

    .line 18
    invoke-virtual {v5}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v5

    const-string v8, "MONTH_PATTERN.pattern()"

    invoke-static {v5, v8}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static {v5, p1, v9, v9, v8}, Lcom/apk/ie0;->break(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    move v5, p1

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    .line 19
    sget-object v8, Lcom/apk/ig0;->break:Ljava/util/regex/Pattern;

    .line 20
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 21
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v2, p1

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 p1, 0x0

    .line 22
    invoke-static {p0, v10, p2, p1}, Lcom/apk/ig0;->do(Ljava/lang/String;IIZ)I

    move-result p1

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0x63

    const/16 p1, 0x46

    if-le p1, v2, :cond_5

    goto :goto_2

    :cond_5
    if-lt p0, v2, :cond_6

    add-int/lit16 v2, v2, 0x76c

    :cond_6
    :goto_2
    const/16 p0, 0x45

    if-gez v2, :cond_7

    goto :goto_3

    :cond_7
    if-lt p0, v2, :cond_8

    add-int/lit16 v2, v2, 0x7d0

    :cond_8
    :goto_3
    const/16 p0, 0x641

    if-lt v2, p0, :cond_9

    const/4 p0, 0x1

    goto :goto_4

    :cond_9
    const/4 p0, 0x0

    :goto_4
    const-string p1, "Failed requirement."

    if-eqz p0, :cond_18

    if-eq v5, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_5

    :cond_a
    const/4 p0, 0x0

    :goto_5
    if-eqz p0, :cond_17

    const/16 p0, 0x1f

    if-le v9, v4, :cond_b

    goto :goto_6

    :cond_b
    if-lt p0, v4, :cond_c

    const/4 p0, 0x1

    goto :goto_7

    :cond_c
    :goto_6
    const/4 p0, 0x0

    :goto_7
    if-eqz p0, :cond_16

    const/16 p0, 0x17

    if-gez v3, :cond_d

    goto :goto_8

    :cond_d
    if-lt p0, v3, :cond_e

    const/4 p0, 0x1

    goto :goto_9

    :cond_e
    :goto_8
    const/4 p0, 0x0

    :goto_9
    if-eqz p0, :cond_15

    const/16 p0, 0x3b

    if-gez v6, :cond_f

    goto :goto_a

    :cond_f
    if-lt p0, v6, :cond_10

    const/4 p2, 0x1

    goto :goto_b

    :cond_10
    :goto_a
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_14

    if-gez v7, :cond_11

    goto :goto_c

    :cond_11
    if-lt p0, v7, :cond_12

    const/4 p0, 0x1

    goto :goto_d

    :cond_12
    :goto_c
    const/4 p0, 0x0

    :goto_d
    if-eqz p0, :cond_13

    .line 23
    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lcom/apk/jh0;->case:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 25
    invoke-virtual {p0, v9, v2}, Ljava/util/GregorianCalendar;->set(II)V

    sub-int/2addr v5, v9

    .line 26
    invoke-virtual {p0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 27
    invoke-virtual {p0, p1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 p1, 0xb

    .line 28
    invoke-virtual {p0, p1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 p1, 0xc

    .line 29
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 p1, 0xd

    .line 30
    invoke-virtual {p0, p1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 32
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    .line 33
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/apk/ig0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/ig0;

    iget-object v0, p1, Lcom/apk/ig0;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ig0;->do:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/apk/ig0;->if:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ig0;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/apk/ig0;->for:J

    iget-wide v2, p0, Lcom/apk/ig0;->for:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p1, Lcom/apk/ig0;->new:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ig0;->new:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/apk/ig0;->try:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ig0;->try:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/apk/ig0;->case:Z

    iget-boolean v1, p0, Lcom/apk/ig0;->case:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/apk/ig0;->else:Z

    iget-boolean v1, p0, Lcom/apk/ig0;->else:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/apk/ig0;->goto:Z

    iget-boolean v1, p0, Lcom/apk/ig0;->goto:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lcom/apk/ig0;->this:Z

    iget-boolean v0, p0, Lcom/apk/ig0;->this:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ig0;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/apk/ig0;->if:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-wide v2, p0, Lcom/apk/ig0;->for:J

    invoke-static {v2, v3}, Lcom/apk/if;->do(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/apk/ig0;->new:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/apk/ig0;->try:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-boolean v0, p0, Lcom/apk/ig0;->case:Z

    invoke-static {v0}, Lcom/apk/do;->do(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-boolean v0, p0, Lcom/apk/ig0;->else:Z

    invoke-static {v0}, Lcom/apk/do;->do(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-boolean v0, p0, Lcom/apk/ig0;->goto:Z

    invoke-static {v0}, Lcom/apk/do;->do(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-boolean v0, p0, Lcom/apk/ig0;->this:Z

    invoke-static {v0}, Lcom/apk/do;->do(Z)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/ig0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/apk/ig0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lcom/apk/ig0;->goto:Z

    if-eqz v1, :cond_1

    .line 6
    iget-wide v1, p0, Lcom/apk/ig0;->for:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "; max-age=0"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "; expires="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/apk/ig0;->for:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/apk/ii0;->do(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/apk/ig0;->this:Z

    if-nez v1, :cond_2

    const-string v1, "; domain="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/apk/ig0;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "; path="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ig0;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v1, p0, Lcom/apk/ig0;->case:Z

    if-eqz v1, :cond_3

    const-string v1, "; secure"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    iget-boolean v1, p0, Lcom/apk/ig0;->else:Z

    if-eqz v1, :cond_4

    const-string v1, "; httponly"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
