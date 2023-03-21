.class public Lcom/apk/ga0;
.super Ljava/lang/Object;
.source "EmojiEntry.java"


# instance fields
.field public do:Ljava/lang/String;

.field public for:I

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ga0;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/ga0;->if:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/apk/ga0;->for:I

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ga0;->do:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
