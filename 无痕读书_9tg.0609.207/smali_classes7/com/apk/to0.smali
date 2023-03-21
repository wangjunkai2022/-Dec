.class public Lcom/apk/to0;
.super Ljava/lang/Object;
.source "ParseError.java"


# instance fields
.field public do:Ljava/lang/String;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/qo0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/apk/qo0;->extends()I

    .line 3
    invoke-virtual {p1}, Lcom/apk/qo0;->final()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/to0;->do:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/apk/to0;->if:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lcom/apk/qo0;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/apk/qo0;->extends()I

    .line 7
    invoke-virtual {p1}, Lcom/apk/qo0;->final()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/to0;->do:Ljava/lang/String;

    .line 8
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/to0;->if:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "<"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/to0;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/to0;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
