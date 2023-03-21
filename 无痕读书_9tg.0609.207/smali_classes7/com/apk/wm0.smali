.class public Lcom/apk/wm0;
.super Lcom/apk/jm0;
.source "DoctypeToken.java"

# interfaces
.implements Lcom/apk/km0;


# instance fields
.field public case:Ljava/lang/Integer;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 3
    iput-object p1, p0, Lcom/apk/wm0;->if:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p3}, Lcom/apk/wm0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p4}, Lcom/apk/wm0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/apk/wm0;->try()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/apk/jm0;-><init>()V

    const/4 p4, 0x0

    .line 9
    iput-object p4, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 10
    iput-object p1, p0, Lcom/apk/wm0;->if:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p3}, Lcom/apk/wm0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p5}, Lcom/apk/wm0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Lcom/apk/wm0;->try()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final new(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x3e

    const/16 v1, 0x20

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3c

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x26

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x27

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x22

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/wm0;->if:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<!DOCTYPE>"

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    const-string v0, "<!DOCTYPE html"

    goto :goto_0

    :cond_1
    const-string v0, "<!DOCTYPE HTML"

    goto :goto_0

    :cond_2
    const-string v0, "<!DOCTYPE "

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/wm0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, " "

    .line 6
    invoke-static {v0, v1}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v3, "\""

    invoke-static {v0, v2, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-static {v0, v1}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, ">"

    .line 9
    invoke-static {v0, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final try()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    const-string v1, "public"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "system"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/wm0;->if:Ljava/lang/String;

    const-string v3, "html"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD HTML 4.0//EN"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 8
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v3, "http://www.w3.org/TR/REC-html40/strict.dtd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v3, "-//W3C//DTD HTML 4.01//EN"

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 14
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v3, "http://www.w3.org/TR/html4/strict.dtd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD HTML 4.01 Transitional//EN"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x16

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 20
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/html4/loose.dtd"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD HTML 4.01 Frameset//EN"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x17

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 25
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/html4/frameset.dtd"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD XHTML 1.0 Strict//EN"

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1f

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 30
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD XHTML 1.0 Transitional//EN"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x20

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 35
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD XHTML 1.0 Frameset//EN"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x21

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 40
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD XHTML 1.1//EN"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 45
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "-//W3C//DTD XHTML Basic 1.1//EN"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x29

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 50
    iget-object v0, p0, Lcom/apk/wm0;->try:Ljava/lang/String;

    const-string v1, "http://www.w3.org/TR/xhtml11/DTD/xhtml-basic11.dtd"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/apk/wm0;->for:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Lcom/apk/wm0;->new:Ljava/lang/String;

    const-string v1, "about:legacy-compat"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3d

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    .line 56
    :cond_a
    iget-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/wm0;->case:Ljava/lang/Integer;

    :cond_b
    return-void
.end method
