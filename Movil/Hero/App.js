import React from 'react';
import { StyleSheet, Text, View, Alert, Button, Image, ListView } from 'react-native';

export default class App extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      hero: [],
      isbussy: true,
      datasource: new ListView.DataSource({ rowHasChanged: (r1, r2) => r1 !== r2 })
    }
  }
  componentWillMount() {
    this.getMoviesFromApiAsync();
  }
  componentDidMount() {
    console.log("Cargo informacion")
  }

  getMoviesFromApiAsync() {
    return fetch('http://192.168.1.75:3000/api/v1/personajes')
      .then((response) => { return response.json() })
      .then((responseJson) => {
        this.setState({
          hero: responseJson,
          isbussy: false,
          datasource: this.state.datasource.cloneWithRows(responseJson)
        });
      })
      .catch((error) => {
        console.error(error);
      });
  }

  getStateHere = () => {
    console.log(this.state.hero[0].name)
  }


  rowData = (data) => (
    <View>
      <Text>{data.name}</Text>
      <Image
        style={{ width: 350, height: 350 }}
        source={{ uri: data.photo }}
      />
    </View>
  );



  render() {
    return (
      <View style={styles.container}>
        <ListView
          dataSource={this.state.datasource}
          renderRow={this.rowData}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
