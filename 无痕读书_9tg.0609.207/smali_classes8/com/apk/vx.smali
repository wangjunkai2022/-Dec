.class public Lcom/apk/vx;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field public case:Z

.field public do:Ljava/lang/String;

.field public for:[Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Z

.field public try:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/apk/vx;->do:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/apk/vx;->if:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/apk/vx;->new:Z

    .line 7
    iput-boolean p1, p0, Lcom/apk/vx;->try:Z

    .line 8
    iput-boolean p1, p0, Lcom/apk/vx;->case:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/apk/vx;->do:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/apk/vx;->if:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/apk/vx;->new:Z

    .line 13
    iput-boolean p4, p0, Lcom/apk/vx;->try:Z

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/apk/vx;->case:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/vx;->for:[Ljava/lang/String;

    return-void
.end method
