.class public final Lcom/apk/vi0;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/vi0$do;,
        Lcom/apk/vi0$if;
    }
.end annotation


# static fields
.field public static final do:[Lcom/apk/ui0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final for:Lcom/apk/vi0;

.field public static final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apk/uk0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/apk/vi0;

    invoke-direct {v0}, Lcom/apk/vi0;-><init>()V

    sput-object v0, Lcom/apk/vi0;->for:Lcom/apk/vi0;

    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/apk/ui0;

    .line 2
    new-instance v1, Lcom/apk/ui0;

    sget-object v2, Lcom/apk/ui0;->this:Lcom/apk/uk0;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->case:Lcom/apk/uk0;

    const-string v5, "GET"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 4
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->case:Lcom/apk/uk0;

    const-string v5, "POST"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 5
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->else:Lcom/apk/uk0;

    const-string v5, "/"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 6
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->else:Lcom/apk/uk0;

    const-string v5, "/index.html"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 7
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->goto:Lcom/apk/uk0;

    const-string v5, "http"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 8
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->goto:Lcom/apk/uk0;

    const-string v5, "https"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 9
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "200"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 10
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "204"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 11
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "206"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 12
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "304"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    .line 13
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "400"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    .line 14
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "404"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    .line 15
    new-instance v1, Lcom/apk/ui0;

    sget-object v4, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    const-string v5, "500"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    .line 16
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "accept-charset"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    .line 17
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "accept-encoding"

    const-string v5, "gzip, deflate"

    invoke-direct {v1, v4, v5}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    aput-object v1, v0, v4

    .line 18
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "accept-language"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    .line 19
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "accept-ranges"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    .line 20
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "accept"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x12

    aput-object v1, v0, v4

    .line 21
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "access-control-allow-origin"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    .line 22
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "age"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    .line 23
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "allow"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x15

    aput-object v1, v0, v4

    .line 24
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "authorization"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x16

    aput-object v1, v0, v4

    .line 25
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "cache-control"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x17

    aput-object v1, v0, v4

    .line 26
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-disposition"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x18

    aput-object v1, v0, v4

    .line 27
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-encoding"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x19

    aput-object v1, v0, v4

    .line 28
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-language"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    .line 29
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-length"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    .line 30
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-location"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    .line 31
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-range"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    .line 32
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "content-type"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    .line 33
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "cookie"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    .line 34
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "date"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x20

    aput-object v1, v0, v4

    .line 35
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "etag"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x21

    aput-object v1, v0, v4

    .line 36
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "expect"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x22

    aput-object v1, v0, v4

    .line 37
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "expires"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x23

    aput-object v1, v0, v4

    .line 38
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "from"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x24

    aput-object v1, v0, v4

    .line 39
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "host"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x25

    aput-object v1, v0, v4

    .line 40
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "if-match"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x26

    aput-object v1, v0, v4

    .line 41
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "if-modified-since"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x27

    aput-object v1, v0, v4

    .line 42
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "if-none-match"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x28

    aput-object v1, v0, v4

    .line 43
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "if-range"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x29

    aput-object v1, v0, v4

    .line 44
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "if-unmodified-since"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2a

    aput-object v1, v0, v4

    .line 45
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "last-modified"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2b

    aput-object v1, v0, v4

    .line 46
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "link"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    .line 47
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "location"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    .line 48
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "max-forwards"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    .line 49
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "proxy-authenticate"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2f

    aput-object v1, v0, v4

    .line 50
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "proxy-authorization"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x30

    aput-object v1, v0, v4

    .line 51
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "range"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x31

    aput-object v1, v0, v4

    .line 52
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "referer"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x32

    aput-object v1, v0, v4

    .line 53
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "refresh"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x33

    aput-object v1, v0, v4

    .line 54
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "retry-after"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x34

    aput-object v1, v0, v4

    .line 55
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "server"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x35

    aput-object v1, v0, v4

    .line 56
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "set-cookie"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x36

    aput-object v1, v0, v4

    .line 57
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "strict-transport-security"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x37

    aput-object v1, v0, v4

    .line 58
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "transfer-encoding"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x38

    aput-object v1, v0, v4

    .line 59
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "user-agent"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x39

    aput-object v1, v0, v4

    .line 60
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "vary"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3a

    aput-object v1, v0, v4

    .line 61
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "via"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3b

    aput-object v1, v0, v4

    .line 62
    new-instance v1, Lcom/apk/ui0;

    const-string v4, "www-authenticate"

    invoke-direct {v1, v4, v3}, Lcom/apk/ui0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    .line 63
    sput-object v0, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 65
    sget-object v1, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    array-length v1, v1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 66
    sget-object v3, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    sget-object v3, Lcom/apk/vi0;->do:[Lcom/apk/ui0;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Collections.unmodifiableMap(result)"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sput-object v0, Lcom/apk/vi0;->if:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do(Lcom/apk/uk0;)Lcom/apk/uk0;
    .locals 5
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x41

    int-to-byte v2, v2

    const/16 v3, 0x5a

    int-to-byte v3, v3

    .line 2
    invoke-virtual {p1, v1}, Lcom/apk/uk0;->case(I)B

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ge v3, v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1
.end method
